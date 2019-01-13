.class Lmiui/widget/ListPopupWindow$DropDownListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownListView"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field static final Us:I = -0x1


# instance fields
.field private Ut:Z

.field private Uu:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    .line 1154
    const/4 v0, 0x0

    const v1, 0x101006d

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1155
    iput-boolean p2, p0, Lmiui/widget/ListPopupWindow$DropDownListView;->Uu:Z

    .line 1156
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiui/widget/ListPopupWindow$DropDownListView;->setCacheColorHint(I)V

    .line 1157
    return-void
.end method

.method static synthetic a(Lmiui/widget/ListPopupWindow$DropDownListView;IZ)I
    .registers 3

    .line 1107
    invoke-direct {p0, p1, p2}, Lmiui/widget/ListPopupWindow$DropDownListView;->h(IZ)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lmiui/widget/ListPopupWindow$DropDownListView;Z)Z
    .registers 2

    .line 1107
    iput-boolean p1, p0, Lmiui/widget/ListPopupWindow$DropDownListView;->Ut:Z

    return p1
.end method

.method private h(IZ)I
    .registers 7

    .line 1169
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1170
    const/4 v1, -0x1

    if-eqz v0, :cond_4d

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_4d

    .line 1174
    :cond_e
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 1175
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_46

    .line 1176
    if-eqz p2, :cond_2e

    .line 1177
    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1178
    :goto_23
    if-ge p1, v2, :cond_3f

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p2

    if-nez p2, :cond_3f

    .line 1179
    add-int/lit8 p1, p1, 0x1

    goto :goto_23

    .line 1182
    :cond_2e
    add-int/lit8 p2, v2, -0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1183
    :goto_34
    if-ltz p1, :cond_3f

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p2

    if-nez p2, :cond_3f

    .line 1184
    add-int/lit8 p1, p1, -0x1

    goto :goto_34

    .line 1188
    :cond_3f
    if-ltz p1, :cond_45

    if-lt p1, v2, :cond_44

    goto :goto_45

    .line 1191
    :cond_44
    return p1

    .line 1189
    :cond_45
    :goto_45
    return v1

    .line 1193
    :cond_46
    if-ltz p1, :cond_4c

    if-lt p1, v2, :cond_4b

    goto :goto_4c

    .line 1196
    :cond_4b
    return p1

    .line 1194
    :cond_4c
    :goto_4c
    return v1

    .line 1171
    :cond_4d
    :goto_4d
    return v1
.end method


# virtual methods
.method final a(IIIII)I
    .registers 16

    .line 1267
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getListPaddingTop()I

    move-result p2

    .line 1268
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getListPaddingBottom()I

    move-result p3

    .line 1269
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getDividerHeight()I

    move-result v0

    .line 1270
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1272
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 1274
    if-nez v2, :cond_18

    .line 1275
    add-int/2addr p2, p3

    return p2

    .line 1279
    :cond_18
    add-int/2addr p2, p3

    .line 1280
    const/4 p3, 0x0

    if-lez v0, :cond_1f

    if-eqz v1, :cond_1f

    .line 1281
    goto :goto_20

    .line 1285
    :cond_1f
    move v0, p3

    .line 1287
    :goto_20
    nop

    .line 1288
    nop

    .line 1289
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 1290
    const/4 v3, 0x0

    move v5, p2

    move p2, p3

    move v4, p2

    move v7, v4

    move-object v6, v3

    :goto_2c
    if-ge p2, v1, :cond_72

    .line 1291
    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    .line 1292
    if-eq v8, v4, :cond_38

    .line 1293
    nop

    .line 1294
    nop

    .line 1296
    move-object v6, v3

    move v4, v8

    :cond_38
    invoke-interface {v2, p2, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1300
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1301
    if-lez v8, :cond_4b

    .line 1302
    const/high16 v9, 0x40000000    # 2.0f

    .line 1303
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_4f

    .line 1305
    :cond_4b
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1307
    :goto_4f
    invoke-virtual {v6, p1, v8}, Landroid/view/View;->measure(II)V

    .line 1309
    if-lez p2, :cond_55

    .line 1311
    add-int/2addr v5, v0

    .line 1314
    :cond_55
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v5, v8

    .line 1316
    if-lt v5, p4, :cond_69

    .line 1322
    if-ltz p5, :cond_67

    if-le p2, p5, :cond_67

    if-lez v7, :cond_67

    if-eq v5, p4, :cond_67

    .line 1323
    nop

    .line 1319
    move p4, v7

    goto :goto_68

    .line 1324
    :cond_67
    nop

    .line 1319
    :goto_68
    return p4

    .line 1327
    :cond_69
    if-ltz p5, :cond_6f

    if-lt p2, p5, :cond_6f

    .line 1328
    nop

    .line 1290
    move v7, v5

    :cond_6f
    add-int/lit8 p2, p2, 0x1

    goto :goto_2c

    .line 1334
    :cond_72
    return v5
.end method

.method public hasFocus()Z
    .registers 2

    .line 1233
    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow$DropDownListView;->Uu:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public hasWindowFocus()Z
    .registers 2

    .line 1213
    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow$DropDownListView;->Uu:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public isFocused()Z
    .registers 2

    .line 1223
    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow$DropDownListView;->Uu:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public isInTouchMode()Z
    .registers 2

    .line 1203
    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow$DropDownListView;->Uu:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow$DropDownListView;->Ut:Z

    if-nez v0, :cond_e

    :cond_8
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method
