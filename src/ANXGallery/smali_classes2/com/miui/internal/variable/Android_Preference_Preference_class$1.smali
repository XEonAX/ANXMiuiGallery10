.class Lcom/miui/internal/variable/Android_Preference_Preference_class$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/variable/Android_Preference_Preference_class;->a(Landroid/preference/CheckBoxPreference;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic kr:Landroid/view/View;

.field final synthetic ks:Landroid/preference/CheckBoxPreference;

.field final synthetic kt:Lmiui/widget/SlidingButton;

.field final synthetic ku:Lcom/miui/internal/variable/Android_Preference_Preference_class;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/Android_Preference_Preference_class;Landroid/view/View;Landroid/preference/CheckBoxPreference;Lmiui/widget/SlidingButton;)V
    .registers 5

    .line 195
    iput-object p1, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->ku:Lcom/miui/internal/variable/Android_Preference_Preference_class;

    iput-object p2, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->kr:Landroid/view/View;

    iput-object p3, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->ks:Landroid/preference/CheckBoxPreference;

    iput-object p4, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->kt:Lmiui/widget/SlidingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6

    .line 198
    iget-object p1, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->kr:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_b

    .line 199
    return-void

    .line 202
    :cond_b
    iget-object p1, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->ku:Lcom/miui/internal/variable/Android_Preference_Preference_class;

    iget-object v0, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->ks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->getPreferenceScreen(Landroid/preference/Preference;)Landroid/preference/PreferenceScreen;

    move-result-object p1

    .line 203
    iget-object v0, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->ku:Lcom/miui/internal/variable/Android_Preference_Preference_class;

    iget-object v1, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->ks:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->kr:Landroid/view/View;

    invoke-static {v0, p1, v1, v2}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->a(Lcom/miui/internal/variable/Android_Preference_Preference_class;Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/view/View;)Z

    .line 204
    iget-object p1, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->ks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result p1

    if-eq p2, p1, :cond_2b

    .line 205
    iget-object p1, p0, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;->kt:Lmiui/widget/SlidingButton;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 207
    :cond_2b
    return-void
.end method
