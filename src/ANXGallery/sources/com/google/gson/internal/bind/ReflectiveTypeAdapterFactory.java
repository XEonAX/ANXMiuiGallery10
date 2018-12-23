package com.google.gson.internal.bind;

import com.google.gson.FieldNamingStrategy;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.internal.Primitives;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class ReflectiveTypeAdapterFactory implements TypeAdapterFactory {
    private final ConstructorConstructor constructorConstructor;
    private final Excluder excluder;
    private final FieldNamingStrategy fieldNamingPolicy;
    private final JsonAdapterAnnotationTypeAdapterFactory jsonAdapterFactory;

    static abstract class BoundField {
        final boolean deserialized;
        final String name;
        final boolean serialized;

        abstract void read(JsonReader jsonReader, Object obj) throws IOException, IllegalAccessException;

        abstract void write(JsonWriter jsonWriter, Object obj) throws IOException, IllegalAccessException;

        abstract boolean writeField(Object obj) throws IOException, IllegalAccessException;

        protected BoundField(String name, boolean serialized, boolean deserialized) {
            this.name = name;
            this.serialized = serialized;
            this.deserialized = deserialized;
        }
    }

    public static final class Adapter<T> extends TypeAdapter<T> {
        private final Map<String, BoundField> boundFields;
        private final ObjectConstructor<T> constructor;

        Adapter(ObjectConstructor<T> constructor, Map<String, BoundField> boundFields) {
            this.constructor = constructor;
            this.boundFields = boundFields;
        }

        public T read(JsonReader in) throws IOException {
            if (in.peek() == JsonToken.NULL) {
                in.nextNull();
                return null;
            }
            T instance = this.constructor.construct();
            try {
                in.beginObject();
                while (in.hasNext()) {
                    BoundField field = (BoundField) this.boundFields.get(in.nextName());
                    if (field == null || !field.deserialized) {
                        in.skipValue();
                    } else {
                        field.read(in, instance);
                    }
                }
                in.endObject();
                return instance;
            } catch (Throwable e) {
                throw new JsonSyntaxException(e);
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            }
        }

        public void write(JsonWriter out, T value) throws IOException {
            if (value == null) {
                out.nullValue();
                return;
            }
            out.beginObject();
            try {
                for (BoundField boundField : this.boundFields.values()) {
                    if (boundField.writeField(value)) {
                        out.name(boundField.name);
                        boundField.write(out, value);
                    }
                }
                out.endObject();
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            }
        }
    }

    public ReflectiveTypeAdapterFactory(ConstructorConstructor constructorConstructor, FieldNamingStrategy fieldNamingPolicy, Excluder excluder, JsonAdapterAnnotationTypeAdapterFactory jsonAdapterFactory) {
        this.constructorConstructor = constructorConstructor;
        this.fieldNamingPolicy = fieldNamingPolicy;
        this.excluder = excluder;
        this.jsonAdapterFactory = jsonAdapterFactory;
    }

    public boolean excludeField(Field f, boolean serialize) {
        return excludeField(f, serialize, this.excluder);
    }

    static boolean excludeField(Field f, boolean serialize, Excluder excluder) {
        return (excluder.excludeClass(f.getType(), serialize) || excluder.excludeField(f, serialize)) ? false : true;
    }

    private List<String> getFieldNames(Field f) {
        SerializedName annotation = (SerializedName) f.getAnnotation(SerializedName.class);
        if (annotation == null) {
            return Collections.singletonList(this.fieldNamingPolicy.translateName(f));
        }
        String serializedName = annotation.value();
        String[] alternates = annotation.alternate();
        if (alternates.length == 0) {
            return Collections.singletonList(serializedName);
        }
        List<String> fieldNames = new ArrayList(alternates.length + 1);
        fieldNames.add(serializedName);
        for (String alternate : alternates) {
            fieldNames.add(alternate);
        }
        return fieldNames;
    }

    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
        Class<? super T> raw = type.getRawType();
        if (Object.class.isAssignableFrom(raw)) {
            return new Adapter(this.constructorConstructor.get(type), getBoundFields(gson, type, raw));
        }
        return null;
    }

    private BoundField createBoundField(Gson context, Field field, String name, TypeToken<?> fieldType, boolean serialize, boolean deserialize) {
        final boolean isPrimitive = Primitives.isPrimitive(fieldType.getRawType());
        JsonAdapter annotation = (JsonAdapter) field.getAnnotation(JsonAdapter.class);
        TypeAdapter<?> mapped = null;
        if (annotation != null) {
            mapped = this.jsonAdapterFactory.getTypeAdapter(this.constructorConstructor, context, fieldType, annotation);
        }
        final boolean jsonAdapterPresent = mapped != null;
        if (mapped == null) {
            mapped = context.getAdapter((TypeToken) fieldType);
        }
        final TypeAdapter<?> typeAdapter = mapped;
        final Field field2 = field;
        final Gson gson = context;
        final TypeToken<?> typeToken = fieldType;
        return new BoundField(name, serialize, deserialize) {
            void write(JsonWriter writer, Object value) throws IOException, IllegalAccessException {
                TypeAdapter t;
                Object fieldValue = field2.get(value);
                if (jsonAdapterPresent) {
                    t = typeAdapter;
                } else {
                    t = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter, typeToken.getType());
                }
                t.write(writer, fieldValue);
            }

            void read(JsonReader reader, Object value) throws IOException, IllegalAccessException {
                Object fieldValue = typeAdapter.read(reader);
                if (fieldValue != null || !isPrimitive) {
                    field2.set(value, fieldValue);
                }
            }

            public boolean writeField(Object value) throws IOException, IllegalAccessException {
                if (this.serialized && field2.get(value) != value) {
                    return true;
                }
                return false;
            }
        };
    }

    /* JADX WARNING: Missing block: B:26:0x00a4, code:
            r22 = com.google.gson.reflect.TypeToken.get(com.google.gson.internal.C$Gson$Types.resolve(r22.getType(), r23, r23.getGenericSuperclass()));
            r23 = r22.getRawType();
     */
    private java.util.Map<java.lang.String, com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.BoundField> getBoundFields(com.google.gson.Gson r21, com.google.gson.reflect.TypeToken<?> r22, java.lang.Class<?> r23) {
        /*
        r20 = this;
        r17 = new java.util.LinkedHashMap;
        r17.<init>();
        r2 = r23.isInterface();
        if (r2 == 0) goto L_0x000c;
    L_0x000b:
        return r17;
    L_0x000c:
        r10 = r22.getType();
    L_0x0010:
        r2 = java.lang.Object.class;
        r0 = r23;
        if (r0 == r2) goto L_0x000b;
    L_0x0016:
        r13 = r23.getDeclaredFields();
        r0 = r13.length;
        r19 = r0;
        r2 = 0;
        r18 = r2;
    L_0x0020:
        r0 = r18;
        r1 = r19;
        if (r0 >= r1) goto L_0x00a4;
    L_0x0026:
        r4 = r13[r18];
        r2 = 1;
        r0 = r20;
        r7 = r0.excludeField(r4, r2);
        r2 = 0;
        r0 = r20;
        r8 = r0.excludeField(r4, r2);
        if (r7 != 0) goto L_0x003f;
    L_0x0038:
        if (r8 != 0) goto L_0x003f;
    L_0x003a:
        r2 = r18 + 1;
        r18 = r2;
        goto L_0x0020;
    L_0x003f:
        r2 = 1;
        r4.setAccessible(r2);
        r2 = r22.getType();
        r3 = r4.getGenericType();
        r0 = r23;
        r12 = com.google.gson.internal.C$Gson$Types.resolve(r2, r0, r3);
        r0 = r20;
        r11 = r0.getFieldNames(r4);
        r15 = 0;
        r14 = 0;
    L_0x0059:
        r2 = r11.size();
        if (r14 >= r2) goto L_0x0083;
    L_0x005f:
        r5 = r11.get(r14);
        r5 = (java.lang.String) r5;
        if (r14 == 0) goto L_0x0068;
    L_0x0067:
        r7 = 0;
    L_0x0068:
        r6 = com.google.gson.reflect.TypeToken.get(r12);
        r2 = r20;
        r3 = r21;
        r9 = r2.createBoundField(r3, r4, r5, r6, r7, r8);
        r0 = r17;
        r16 = r0.put(r5, r9);
        r16 = (com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.BoundField) r16;
        if (r15 != 0) goto L_0x0080;
    L_0x007e:
        r15 = r16;
    L_0x0080:
        r14 = r14 + 1;
        goto L_0x0059;
    L_0x0083:
        if (r15 == 0) goto L_0x003a;
    L_0x0085:
        r2 = new java.lang.IllegalArgumentException;
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r3 = r3.append(r10);
        r6 = " declares multiple JSON fields named ";
        r3 = r3.append(r6);
        r6 = r15.name;
        r3 = r3.append(r6);
        r3 = r3.toString();
        r2.<init>(r3);
        throw r2;
    L_0x00a4:
        r2 = r22.getType();
        r3 = r23.getGenericSuperclass();
        r0 = r23;
        r2 = com.google.gson.internal.C$Gson$Types.resolve(r2, r0, r3);
        r22 = com.google.gson.reflect.TypeToken.get(r2);
        r23 = r22.getRawType();
        goto L_0x0010;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.getBoundFields(com.google.gson.Gson, com.google.gson.reflect.TypeToken, java.lang.Class):java.util.Map<java.lang.String, com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$BoundField>");
    }
}
