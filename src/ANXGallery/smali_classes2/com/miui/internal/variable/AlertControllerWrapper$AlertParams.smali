.class public Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;
.super Lcom/android/internal/app/AlertController$AlertParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/AlertControllerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;
    }
.end annotation


# instance fields
.field public mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$ActionItem;",
            ">;"
        }
    .end annotation
.end field

.field public mCheckBoxMessage:Ljava/lang/CharSequence;

.field public mEditMode:Z

.field public mIsChecked:Z

.field public mOnActionItemClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnShowListener:Landroid/content/DialogInterface$OnShowListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 159
    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 160
    return-void
.end method

.method private a(Landroid/widget/ListView;I)Landroid/widget/ListAdapter;
    .registers 11

    .line 223
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_20

    .line 224
    iget-boolean v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mEditMode:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_f

    iget-object p1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_2f

    .line 225
    :cond_f
    new-instance v7, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;

    iget-object v2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mContext:Landroid/content/Context;

    const v4, 0x1020014

    iget-object v5, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v0, v7

    move-object v1, p0

    move v3, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;-><init>(Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V

    goto :goto_2e

    .line 239
    :cond_20
    new-instance v7, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;

    iget-object v2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$2;-><init>(Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;I)V

    .line 268
    :goto_2e
    move-object p1, v7

    :goto_2f
    return-object p1
.end method

.method private a(Lcom/android/internal/app/AlertController;)V
    .registers 5

    .line 284
    check-cast p1, Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {p1}, Lcom/miui/internal/variable/AlertControllerWrapper;->getImpl()Lcom/miui/internal/app/AlertControllerImpl;

    move-result-object p1

    .line 285
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Lcom/miui/internal/app/AlertControllerImpl;->getListLayout()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 286
    if-nez v0, :cond_16

    .line 287
    return-void

    .line 291
    :cond_16
    iget-boolean v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_23

    .line 292
    invoke-virtual {p1}, Lcom/miui/internal/app/AlertControllerImpl;->getMultiChoiceItemLayout()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->a(Landroid/widget/ListView;I)Landroid/widget/ListAdapter;

    move-result-object v1

    goto :goto_34

    .line 294
    :cond_23
    iget-boolean v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_2c

    invoke-virtual {p1}, Lcom/miui/internal/app/AlertControllerImpl;->getSingleChoiceItemLayout()I

    move-result v1

    goto :goto_30

    .line 295
    :cond_2c
    invoke-virtual {p1}, Lcom/miui/internal/app/AlertControllerImpl;->getListItemLayout()I

    move-result v1

    .line 294
    :goto_30
    invoke-direct {p0, v1}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->g(I)Landroid/widget/ListAdapter;

    move-result-object v1

    .line 300
    :goto_34
    invoke-virtual {p1, v1}, Lcom/miui/internal/app/AlertControllerImpl;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 301
    iget v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCheckedItem:I

    invoke-virtual {p1, v1}, Lcom/miui/internal/app/AlertControllerImpl;->setCheckedItem(I)V

    .line 302
    iget-object v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCheckedItems:[Z

    invoke-virtual {p1, v1}, Lcom/miui/internal/app/AlertControllerImpl;->setCheckedItems([Z)V

    .line 304
    iget-object v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_4e

    .line 305
    new-instance v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$3;

    invoke-direct {v1, p0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$3;-><init>(Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;Lcom/miui/internal/app/AlertControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_5a

    .line 313
    :cond_4e
    iget-object v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_5a

    .line 314
    new-instance v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$4;-><init>(Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;Landroid/widget/ListView;Lcom/miui/internal/app/AlertControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 326
    :cond_5a
    :goto_5a
    iget-object v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_63

    .line 327
    iget-object v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 330
    :cond_63
    iget-boolean v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_6c

    .line 331
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_74

    .line 332
    :cond_6c
    iget-boolean v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_74

    .line 333
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 335
    :cond_74
    :goto_74
    invoke-virtual {p1, v0}, Lcom/miui/internal/app/AlertControllerImpl;->setListView(Landroid/widget/ListView;)V

    .line 336
    return-void
.end method

.method private g(I)Landroid/widget/ListAdapter;
    .registers 10

    .line 273
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCursor:Landroid/database/Cursor;

    const v1, 0x1020014

    if-nez v0, :cond_19

    .line 274
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_e

    iget-object p1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_32

    .line 275
    :cond_e
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, v2, p1, v1, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 280
    move-object p1, v0

    goto :goto_32

    .line 277
    :cond_19
    new-instance v6, Landroid/widget/SimpleCursorAdapter;

    iget-object v2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mLabelColumn:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v4, v7

    new-array v5, v0, [I

    aput v1, v5, v7

    move-object v0, v6

    move-object v1, v2

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 280
    move-object p1, v6

    :goto_32
    return-object p1
.end method


# virtual methods
.method public apply(Lcom/android/internal/app/AlertController;)V
    .registers 6

    .line 164
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 165
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    goto :goto_13

    .line 167
    :cond_a
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_13

    .line 168
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 172
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    .line 173
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 176
    :cond_1c
    iget v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIconId:I

    if-eqz v0, :cond_25

    .line 177
    iget v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 180
    :cond_25
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2e

    .line 181
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 184
    :cond_2e
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_40

    .line 185
    move-object v0, p1

    check-cast v0, Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {v0}, Lcom/miui/internal/variable/AlertControllerWrapper;->getImpl()Lcom/miui/internal/app/AlertControllerImpl;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mIsChecked:Z

    iget-object v2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCheckBoxMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/app/AlertControllerImpl;->setCheckBox(ZLjava/lang/CharSequence;)V

    .line 189
    :cond_40
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    .line 190
    const/4 v0, -0x1

    iget-object v2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 195
    :cond_4d
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_59

    .line 196
    const/4 v0, -0x2

    iget-object v2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 201
    :cond_59
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_65

    .line 202
    const/4 v0, -0x3

    iget-object v2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 207
    :cond_65
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_71

    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_71

    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_74

    .line 208
    :cond_71
    invoke-direct {p0, p1}, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->a(Lcom/android/internal/app/AlertController;)V

    .line 211
    :cond_74
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_7d

    .line 212
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;)V

    .line 215
    :cond_7d
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mActionItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_8e

    .line 216
    check-cast p1, Lcom/miui/internal/variable/AlertControllerWrapper;

    invoke-virtual {p1}, Lcom/miui/internal/variable/AlertControllerWrapper;->getImpl()Lcom/miui/internal/app/AlertControllerImpl;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mActionItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mOnActionItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/miui/internal/app/AlertControllerImpl;->setActionItems(Ljava/util/ArrayList;Landroid/content/DialogInterface$OnClickListener;)V

    .line 219
    :cond_8e
    return-void
.end method
