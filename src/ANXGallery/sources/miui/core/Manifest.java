package miui.core;

import java.util.LinkedHashMap;
import java.util.Map;
import miui.module.Dependency;
import miui.module.Module;

public class Manifest {
    private Map<String, Dependency> dJ = new LinkedHashMap();
    private Module dx;
    private Dependency xu;

    public int getLevel() {
        return this.dx.getLevel();
    }

    public Module getModule() {
        return this.dx;
    }

    public void setModule(Module module) {
        this.dx = module;
    }

    public Dependency getSdkDependency() {
        return this.xu;
    }

    public void setSdkDependency(Dependency dependency) {
        this.xu = dependency;
    }

    public Map<String, Dependency> getDependencies() {
        return this.dJ;
    }

    public void setDependencies(Map<String, Dependency> map) {
        this.dJ = map;
    }

    public Dependency getDependency(String str) {
        return (Dependency) this.dJ.get(str);
    }

    public void addDependency(String str, Dependency dependency) {
        this.dJ.put(str, dependency);
    }

    public void clearDependencies() {
        this.dJ.clear();
    }
}
