package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.C$Gson$Types;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.internal.Streams;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public final class MapTypeAdapterFactory implements TypeAdapterFactory {
    private final boolean complexMapKeySerialization;
    private final ConstructorConstructor constructorConstructor;

    private final class Adapter<K, V> extends TypeAdapter<Map<K, V>> {
        private final ObjectConstructor<? extends Map<K, V>> constructor;
        private final TypeAdapter<K> keyTypeAdapter;
        private final TypeAdapter<V> valueTypeAdapter;

        public Adapter(Gson context, Type keyType, TypeAdapter<K> keyTypeAdapter, Type valueType, TypeAdapter<V> valueTypeAdapter, ObjectConstructor<? extends Map<K, V>> constructor) {
            this.keyTypeAdapter = new TypeAdapterRuntimeTypeWrapper(context, keyTypeAdapter, keyType);
            this.valueTypeAdapter = new TypeAdapterRuntimeTypeWrapper(context, valueTypeAdapter, valueType);
            this.constructor = constructor;
        }

        public Map<K, V> read(JsonReader in) throws IOException {
            JsonToken peek = in.peek();
            if (peek == JsonToken.NULL) {
                in.nextNull();
                return null;
            }
            Map<K, V> map = (Map) this.constructor.construct();
            K key;
            StringBuilder stringBuilder;
            if (peek == JsonToken.BEGIN_ARRAY) {
                in.beginArray();
                while (in.hasNext()) {
                    in.beginArray();
                    key = this.keyTypeAdapter.read(in);
                    if (map.put(key, this.valueTypeAdapter.read(in)) == null) {
                        in.endArray();
                    } else {
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("duplicate key: ");
                        stringBuilder.append(key);
                        throw new JsonSyntaxException(stringBuilder.toString());
                    }
                }
                in.endArray();
            } else {
                in.beginObject();
                while (in.hasNext()) {
                    JsonReaderInternalAccess.INSTANCE.promoteNameToValue(in);
                    key = this.keyTypeAdapter.read(in);
                    if (map.put(key, this.valueTypeAdapter.read(in)) != null) {
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("duplicate key: ");
                        stringBuilder.append(key);
                        throw new JsonSyntaxException(stringBuilder.toString());
                    }
                }
                in.endObject();
            }
            return map;
        }

        public void write(JsonWriter out, Map<K, V> map) throws IOException {
            if (map == null) {
                out.nullValue();
            } else if (MapTypeAdapterFactory.this.complexMapKeySerialization) {
                int i;
                boolean hasComplexKeys = false;
                List<JsonElement> keys = new ArrayList(map.size());
                List<V> values = new ArrayList(map.size());
                Iterator i$ = map.entrySet().iterator();
                while (true) {
                    i = 0;
                    if (!i$.hasNext()) {
                        break;
                    }
                    Entry<K, V> entry = (Entry) i$.next();
                    JsonElement keyElement = this.keyTypeAdapter.toJsonTree(entry.getKey());
                    keys.add(keyElement);
                    values.add(entry.getValue());
                    if (keyElement.isJsonArray() || keyElement.isJsonObject()) {
                        i = 1;
                    }
                    hasComplexKeys |= i;
                }
                int i2;
                if (hasComplexKeys) {
                    out.beginArray();
                    while (true) {
                        i2 = i;
                        if (i2 >= keys.size()) {
                            break;
                        }
                        out.beginArray();
                        Streams.write((JsonElement) keys.get(i2), out);
                        this.valueTypeAdapter.write(out, values.get(i2));
                        out.endArray();
                        i = i2 + 1;
                    }
                    out.endArray();
                } else {
                    out.beginObject();
                    while (true) {
                        i2 = i;
                        if (i2 >= keys.size()) {
                            break;
                        }
                        out.name(keyToString((JsonElement) keys.get(i2)));
                        this.valueTypeAdapter.write(out, values.get(i2));
                        i = i2 + 1;
                    }
                    out.endObject();
                }
            } else {
                out.beginObject();
                for (Entry<K, V> entry2 : map.entrySet()) {
                    out.name(String.valueOf(entry2.getKey()));
                    this.valueTypeAdapter.write(out, entry2.getValue());
                }
                out.endObject();
            }
        }

        private String keyToString(JsonElement keyElement) {
            if (keyElement.isJsonPrimitive()) {
                JsonPrimitive primitive = keyElement.getAsJsonPrimitive();
                if (primitive.isNumber()) {
                    return String.valueOf(primitive.getAsNumber());
                }
                if (primitive.isBoolean()) {
                    return Boolean.toString(primitive.getAsBoolean());
                }
                if (primitive.isString()) {
                    return primitive.getAsString();
                }
                throw new AssertionError();
            } else if (keyElement.isJsonNull()) {
                return "null";
            } else {
                throw new AssertionError();
            }
        }
    }

    public MapTypeAdapterFactory(ConstructorConstructor constructorConstructor, boolean complexMapKeySerialization) {
        this.constructorConstructor = constructorConstructor;
        this.complexMapKeySerialization = complexMapKeySerialization;
    }

    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        Gson gson2 = gson;
        Type type = typeToken.getType();
        if (!Map.class.isAssignableFrom(typeToken.getRawType())) {
            return null;
        }
        Type[] keyAndValueTypes = C$Gson$Types.getMapKeyAndValueTypes(type, C$Gson$Types.getRawType(type));
        TypeAdapter<?> keyAdapter = getKeyAdapter(gson2, keyAndValueTypes[0]);
        return new Adapter(gson2, keyAndValueTypes[0], keyAdapter, keyAndValueTypes[1], gson2.getAdapter(TypeToken.get(keyAndValueTypes[1])), this.constructorConstructor.get(typeToken));
    }

    private TypeAdapter<?> getKeyAdapter(Gson context, Type keyType) {
        return (keyType == Boolean.TYPE || keyType == Boolean.class) ? TypeAdapters.BOOLEAN_AS_STRING : context.getAdapter(TypeToken.get(keyType));
    }
}
