.class public Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;
.super Ljava/lang/Object;
.source "RefocusEffectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/refocus/RefocusEffectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RefocusEffectConfig"
.end annotation


# instance fields
.field public final cameraDefinedType:I

.field public final degree:I

.field public final icon:Ljava/lang/String;

.field public final iconColor:Ljava/lang/String;

.field public final interpolatorFactor:F

.field public final mask:Ljava/lang/String;

.field public final motionScale:F

.field public final name:Ljava/lang/String;

.field public final relativePath:Ljava/lang/String;

.field public final relightingType:Ljava/lang/String;

.field public final totalSecond:I

.field public final type:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;IIFFLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "relativePath"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/String;
    .param p4, "mask"    # Ljava/lang/String;
    .param p5, "type"    # Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;
    .param p6, "totalSecond"    # I
    .param p7, "degree"    # I
    .param p8, "motionScale"    # F
    .param p9, "interpolatorFactor"    # F
    .param p10, "iconColor"    # Ljava/lang/String;
    .param p11, "relightingType"    # Ljava/lang/String;
    .param p12, "cameraDefinedType"    # I

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->name:Ljava/lang/String;

    .line 142
    iput-object p2, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->relativePath:Ljava/lang/String;

    .line 143
    iput-object p3, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->icon:Ljava/lang/String;

    .line 144
    iput-object p4, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->mask:Ljava/lang/String;

    .line 145
    iput-object p5, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->type:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    .line 146
    iput p6, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->totalSecond:I

    .line 147
    iput p7, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->degree:I

    .line 148
    iput p8, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->motionScale:F

    .line 149
    iput p9, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->interpolatorFactor:F

    .line 150
    iput-object p10, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->iconColor:Ljava/lang/String;

    .line 151
    iput-object p11, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->relightingType:Ljava/lang/String;

    .line 152
    iput p12, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->cameraDefinedType:I

    .line 153
    return-void
.end method


# virtual methods
.method public generateEffect()Lcom/miui/extraphoto/refocus/effect/RefocusEffect;
    .locals 8

    .line 161
    sget-object v0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$1;->$SwitchMap$com$miui$extraphoto$refocus$effect$RefocusEffectType:[I

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->type:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    invoke-virtual {v1}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 189
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->mask:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 185
    :pswitch_0
    new-instance v0, Lcom/miui/extraphoto/refocus/effect/RelightingEffect;

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->type:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->relightingType:Ljava/lang/String;

    iget v7, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->cameraDefinedType:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/miui/extraphoto/refocus/effect/RelightingEffect;-><init>(Ljava/lang/String;Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;ILjava/lang/String;I)V

    .line 186
    .local v0, "refocusEffect":Lcom/miui/extraphoto/refocus/effect/RefocusEffect;
    goto/16 :goto_3

    .line 180
    .end local v0    # "refocusEffect":Lcom/miui/extraphoto/refocus/effect/RefocusEffect;
    :pswitch_1
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->mask:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->relativePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->mask:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 181
    .local v0, "maskPath":Ljava/lang/String;
    new-instance v1, Lcom/miui/extraphoto/refocus/effect/RefocusEffectStar;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->type:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    iget v4, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->totalSecond:I

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectStar;-><init>(Ljava/lang/String;Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;ILjava/lang/String;)V

    .end local v0    # "maskPath":Ljava/lang/String;
    move-object v0, v1

    .line 183
    .local v0, "refocusEffect":Lcom/miui/extraphoto/refocus/effect/RefocusEffect;
    goto/16 :goto_3

    .line 175
    .end local v0    # "refocusEffect":Lcom/miui/extraphoto/refocus/effect/RefocusEffect;
    :pswitch_2
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->mask:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->relativePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->mask:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v0, v1

    .line 176
    .local v0, "maskPath":Ljava/lang/String;
    new-instance v1, Lcom/miui/extraphoto/refocus/effect/RefocusEffectCircle;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->type:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    iget v4, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->totalSecond:I

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectCircle;-><init>(Ljava/lang/String;Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;ILjava/lang/String;)V

    .end local v0    # "maskPath":Ljava/lang/String;
    move-object v0, v1

    .line 178
    .local v0, "refocusEffect":Lcom/miui/extraphoto/refocus/effect/RefocusEffect;
    goto :goto_3

    .line 172
    .end local v0    # "refocusEffect":Lcom/miui/extraphoto/refocus/effect/RefocusEffect;
    :pswitch_3
    new-instance v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectMotionRing;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->type:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    iget v4, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->totalSecond:I

    iget v5, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->motionScale:F

    iget v6, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->interpolatorFactor:F

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectMotionRing;-><init>(Ljava/lang/String;Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;IFF)V

    .line 173
    .restart local v0    # "refocusEffect":Lcom/miui/extraphoto/refocus/effect/RefocusEffect;
    goto :goto_3

    .line 169
    .end local v0    # "refocusEffect":Lcom/miui/extraphoto/refocus/effect/RefocusEffect;
    :pswitch_4
    new-instance v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectMotion;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->type:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    iget v3, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->totalSecond:I

    iget v4, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->degree:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectMotion;-><init>(Ljava/lang/String;Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;II)V

    .line 170
    .restart local v0    # "refocusEffect":Lcom/miui/extraphoto/refocus/effect/RefocusEffect;
    goto :goto_3

    .line 166
    .end local v0    # "refocusEffect":Lcom/miui/extraphoto/refocus/effect/RefocusEffect;
    :pswitch_5
    new-instance v0, Lcom/miui/extraphoto/refocus/effect/RefocusEffectMotionRandom;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->type:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    iget v3, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->totalSecond:I

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectMotionRandom;-><init>(Ljava/lang/String;Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;I)V

    .line 167
    .restart local v0    # "refocusEffect":Lcom/miui/extraphoto/refocus/effect/RefocusEffect;
    goto :goto_3

    .line 163
    .end local v0    # "refocusEffect":Lcom/miui/extraphoto/refocus/effect/RefocusEffect;
    :pswitch_6
    const/4 v0, 0x0

    .line 164
    .restart local v0    # "refocusEffect":Lcom/miui/extraphoto/refocus/effect/RefocusEffect;
    goto :goto_3

    .line 189
    .end local v0    # "refocusEffect":Lcom/miui/extraphoto/refocus/effect/RefocusEffect;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->relativePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->mask:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object v0, v1

    .line 190
    .local v0, "maskPath":Ljava/lang/String;
    new-instance v1, Lcom/miui/extraphoto/refocus/effect/RefocusEffectBasic;

    iget-object v2, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->type:Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;

    iget v4, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->totalSecond:I

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/miui/extraphoto/refocus/effect/RefocusEffectBasic;-><init>(Ljava/lang/String;Lcom/miui/extraphoto/refocus/effect/RefocusEffectType;ILjava/lang/String;)V

    .end local v0    # "maskPath":Ljava/lang/String;
    move-object v0, v1

    .line 194
    .local v0, "refocusEffect":Lcom/miui/extraphoto/refocus/effect/RefocusEffect;
    :goto_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconPath()Ljava/lang/String;
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->relativePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/extraphoto/refocus/RefocusEffectManager$RefocusEffectConfig;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
