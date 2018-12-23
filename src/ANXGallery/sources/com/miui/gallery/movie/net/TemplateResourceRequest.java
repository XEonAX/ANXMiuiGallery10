package com.miui.gallery.movie.net;

import com.miui.gallery.movie.entity.MovieResource;
import com.miui.gallery.movie.entity.TemplateResource;

public class TemplateResourceRequest extends LocalResourceRequest {
    protected long getParentId() {
        return 10146691454730304L;
    }

    protected MovieResource newLocalResource() {
        return new TemplateResource();
    }
}
