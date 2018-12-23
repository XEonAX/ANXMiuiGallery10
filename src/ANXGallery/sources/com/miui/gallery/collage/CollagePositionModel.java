package com.miui.gallery.collage;

import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import java.lang.reflect.Type;

public class CollagePositionModel {
    public final float margin;
    public final float[] position;
    public final int size;

    static class CustomDeserializer implements JsonDeserializer<CollagePositionModel> {
        CustomDeserializer() {
        }

        public CollagePositionModel deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
            float margin;
            JsonObject rootObject = jsonElement.getAsJsonObject();
            JsonElement marginElement = rootObject.get("margin");
            if (marginElement != null) {
                margin = marginElement.getAsFloat();
            } else {
                margin = 0.0f;
            }
            JsonArray jsonArray = rootObject.get("position").getAsJsonArray();
            float[] position = new float[jsonArray.size()];
            for (int i = 0; i < position.length; i++) {
                position[i] = jsonArray.get(i).getAsFloat();
            }
            JsonElement sizeElement = rootObject.get("size");
            if (sizeElement != null) {
                return new CollagePositionModel(sizeElement.getAsInt(), position, margin);
            }
            return new CollagePositionModel(position, margin);
        }
    }

    CollagePositionModel(int size, float[] position, float margin) {
        this.size = size;
        this.position = position;
        this.margin = margin;
    }

    CollagePositionModel(float[] position, float margin) {
        this.margin = margin;
        this.size = -1;
        this.position = position;
    }

    public static CollagePositionModel getCollagePositionModelByImageSize(CollagePositionModel[] collagePositionModels, int imageSize) {
        for (CollagePositionModel collagePositionModel : collagePositionModels) {
            if (collagePositionModel.size == -1 || collagePositionModel.size == imageSize) {
                return collagePositionModel;
            }
        }
        return collagePositionModels[0];
    }
}
