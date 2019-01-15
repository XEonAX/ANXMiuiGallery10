.class public abstract Lcom/miui/internal/variable/Android_Preference_Preference_class;
.super Lcom/miui/internal/util/ClassProxy;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/variable/IManagedClassProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/util/ClassProxy<",
        "Landroid/preference/Preference;",
        ">;",
        "Lcom/miui/internal/variable/IManagedClassProxy;"
    }
.end annotation


# static fields
.field protected static final mCanRecycleLayout:Lmiui/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 69
    const-class v0, Landroid/preference/Preference;

    .line 70
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_b

    const-string v1, "mCanRecycleLayout"

    goto :goto_d

    :cond_b
    const-string v1, "mRecycleEnabled"

    :goto_d
    const-string v2, "Z"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/Android_Preference_Preference_class;->mCanRecycleLayout:Lmiui/reflect/Field;

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 73
    const-class v0, Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    .line 74
    return-void
.end method

.method private a(Landroid/preference/CheckBoxPreference;Landroid/view/View;)V
    .registers 5

    .line 191
    const v0, 0x1020001

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_17

    instance-of v1, v0, Lmiui/widget/SlidingButton;

    if-eqz v1, :cond_17

    .line 193
    check-cast v0, Lmiui/widget/SlidingButton;

    .line 194
    new-instance v1, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;-><init>(Lcom/miui/internal/variable/Android_Preference_Preference_class;Landroid/view/View;Landroid/preference/CheckBoxPreference;Lmiui/widget/SlidingButton;)V

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 210
    :cond_17
    return-void
.end method

.method private a(Landroid/view/View;Landroid/preference/Preference;)V
    .registers 4

    .line 153
    invoke-virtual {p2}, Landroid/preference/Preference;->getOrder()I

    move-result v0

    .line 154
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 155
    if-nez v0, :cond_16

    .line 156
    sget p2, Lcom/miui/internal/R$drawable;->preference_category_background_first_no_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_29

    .line 158
    :cond_16
    sget p2, Lcom/miui/internal/R$drawable;->preference_category_background_no_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_29

    .line 161
    :cond_1c
    if-nez v0, :cond_24

    .line 162
    sget p2, Lcom/miui/internal/R$drawable;->preference_category_background_first:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_29

    .line 164
    :cond_24
    sget p2, Lcom/miui/internal/R$drawable;->preference_category_background:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 167
    :goto_29
    return-void
.end method

.method private a(Landroid/view/View;Landroid/preference/Preference;Landroid/preference/PreferenceGroup;)V
    .registers 6

    .line 170
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 171
    invoke-virtual {p3, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object p3

    if-ne p2, p3, :cond_17

    .line 172
    sget p2, Lcom/miui/internal/R$drawable;->preference_category_background_first_no_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2e

    .line 174
    :cond_17
    sget p2, Lcom/miui/internal/R$drawable;->preference_category_background_no_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2e

    .line 177
    :cond_1d
    invoke-virtual {p3, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object p3

    if-ne p2, p3, :cond_29

    .line 178
    sget p2, Lcom/miui/internal/R$drawable;->preference_category_background_first:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2e

    .line 180
    :cond_29
    sget p2, Lcom/miui/internal/R$drawable;->preference_category_background:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 183
    :goto_2e
    return-void
.end method

.method private a(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/view/View;)Z
    .registers 13

    .line 213
    const/4 v1, 0x0

    if-nez p1, :cond_4

    .line 214
    return v1

    .line 216
    :cond_4
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 217
    move v4, v1

    :goto_9
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_4c

    .line 218
    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/preference/Preference;

    .line 219
    const/4 v8, 0x1

    if-ne v5, p2, :cond_3c

    .line 221
    nop

    .line 222
    move-object v6, p3

    :goto_1a
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_3c

    .line 223
    instance-of v7, v6, Landroid/widget/ListView;

    if-eqz v7, :cond_39

    .line 224
    move-object v0, v6

    check-cast v0, Landroid/widget/ListView;

    .line 225
    nop

    .line 226
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int v5, v4, v1

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    .line 225
    move-object v2, p1

    move-object v3, v0

    move-object v4, p3

    invoke-virtual/range {v2 .. v7}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 227
    return v8

    .line 229
    :cond_39
    check-cast v6, Landroid/view/View;

    goto :goto_1a

    .line 232
    :cond_3c
    instance-of v6, v5, Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_49

    .line 233
    check-cast v5, Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v5, p2, p3}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->a(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 234
    return v8

    .line 217
    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 238
    :cond_4c
    return v1
.end method

.method static synthetic a(Lcom/miui/internal/variable/Android_Preference_Preference_class;Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/view/View;)Z
    .registers 4

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->a(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/view/View;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public buildProxy()V
    .registers 3

    .line 80
    const-string v0, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->attachConstructor(Ljava/lang/String;)J

    .line 81
    const-string v0, "onBindView"

    const-string v1, "(Landroid/view/View;)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 82
    return-void
.end method

.method protected abstract getPreferenceScreen(Landroid/preference/Preference;)Landroid/preference/PreferenceScreen;
.end method

.method protected handle()V
    .registers 8

    .line 86
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->handle_init_(JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v2, v0, v0}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->handleOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V

    .line 88
    return-void
.end method

.method protected handleOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V
    .registers 11

    .line 91
    nop

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 94
    instance-of v1, p3, Landroid/preference/PreferenceCategory;

    const/4 v2, 0x0

    if-eqz v1, :cond_4e

    .line 95
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_34

    .line 96
    const/4 v1, 0x0

    .line 98
    :try_start_12
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getParent"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 99
    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_26} :catch_29

    .line 102
    nop

    .line 103
    move-object v1, v3

    goto :goto_2a

    .line 100
    :catch_29
    move-exception v3

    .line 103
    :goto_2a
    if-eqz v1, :cond_30

    .line 104
    invoke-direct {p0, p4, p3, v1}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->a(Landroid/view/View;Landroid/preference/Preference;Landroid/preference/PreferenceGroup;)V

    goto :goto_33

    .line 106
    :cond_30
    invoke-direct {p0, p4, p3}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->a(Landroid/view/View;Landroid/preference/Preference;)V

    .line 108
    :goto_33
    goto :goto_37

    .line 109
    :cond_34
    invoke-direct {p0, p4, p3}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->a(Landroid/view/View;Landroid/preference/Preference;)V

    .line 111
    :goto_37
    invoke-virtual {p4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 112
    invoke-virtual {p4}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4, v1, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_5b

    .line 114
    :cond_4e
    invoke-virtual {p3}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/miui/internal/R$attr;->preferenceBackground:I

    invoke-static {v1, v3}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 116
    invoke-virtual {p4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 118
    :goto_5b
    instance-of v1, p3, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_65

    .line 119
    move-object v1, p3

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1, p4}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->a(Landroid/preference/CheckBoxPreference;Landroid/view/View;)V

    .line 122
    :cond_65
    sget v1, Lcom/miui/internal/R$id;->arrow_right:I

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_79

    .line 124
    invoke-virtual {p3}, Landroid/preference/Preference;->getWidgetLayoutResource()I

    move-result v3

    if-nez v3, :cond_74

    goto :goto_76

    :cond_74
    const/16 v2, 0x8

    :goto_76
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 128
    :cond_79
    nop

    .line 129
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$dimen;->preference_horizontal_extra_padding:I

    .line 131
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 133
    invoke-virtual {p4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 135
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 136
    if-eqz v2, :cond_94

    .line 137
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 139
    :cond_94
    instance-of v2, p3, Lmiui/preference/RadioButtonPreference;

    if-eqz v2, :cond_a8

    .line 140
    invoke-virtual {p3}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$dimen;->preference_item_padding_side_zero:I

    .line 141
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 142
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 144
    :cond_a8
    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    .line 145
    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    .line 147
    invoke-virtual {p4}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p4}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p4, v2, v0, v1, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 149
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->originalOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V

    .line 150
    return-void
.end method

.method protected handle_init_(JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 242
    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->original_init_(JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 243
    sget-object p1, Lcom/miui/internal/variable/Android_Preference_Preference_class;->mCanRecycleLayout:Lmiui/reflect/Field;

    const/4 p2, 0x1

    invoke-virtual {p1, p3, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;Z)V

    .line 244
    return-void
.end method

.method protected originalOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V
    .registers 5

    .line 186
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.Android_Preference_Preference_class.originalOnBindView(long, Preference, View)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected original_init_(JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 247
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.Android_Preference_Preference_class.original_init_(long, View, Context, AttributeSet, int)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
