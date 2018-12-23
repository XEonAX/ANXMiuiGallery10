.class Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;
.super Landroid/widget/CursorAdapter;
.source "InputFaceNameFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MergeNameAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private CONTECT_HEADER_VIEW:I

.field private NORMAL_VIEW:I

.field private mContactsInfo:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$ContactsInfo;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Landroid/content/Context;)V
    .locals 3
    .param p1, "this$0"    # Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 633
    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    .line 634
    invoke-direct {p0, p2, v2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 624
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->CONTECT_HEADER_VIEW:I

    .line 625
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->NORMAL_VIEW:I

    .line 626
    iput-object v2, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 654
    new-instance v0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$ContactsInfo;

    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$ContactsInfo;-><init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->mContactsInfo:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$ContactsInfo;

    .line 635
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 636
    invoke-static {p1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$1000(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;->access$900(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;)V

    .line 637
    return-void
.end method

.method private bindHeaderView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 706
    const v1, 0x7f1200af

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 707
    .local v0, "divider":Landroid/view/View;
    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$1300(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v1, v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$2300(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Landroid/view/View;)V

    .line 712
    :goto_0
    return-void

    .line 710
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v1, v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$2400(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Landroid/view/View;)V

    goto :goto_0
.end method

.method private getItemViewTypeByCursor(Landroid/database/Cursor;)I
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 724
    invoke-static {p1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->getPhoneNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "contact"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->CONTECT_HEADER_VIEW:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->NORMAL_VIEW:I

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 658
    const v0, 0x7f120026

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->CONTECT_HEADER_VIEW:I

    if-ne v0, v1, :cond_1

    .line 659
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->bindHeaderView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->mContactsInfo:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$ContactsInfo;

    sget-object v1, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$Phone;->CONTACT_ID:Ljava/lang/String;

    .line 663
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 662
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$ContactsInfo;->_id:Ljava/lang/String;

    .line 664
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->mContactsInfo:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$ContactsInfo;

    invoke-static {p3}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->getPhoneNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$ContactsInfo;->phoneNumber:Ljava/lang/String;

    .line 665
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->mContactsInfo:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$ContactsInfo;

    sget-object v1, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$Phone;->DISPLAY_NAME:Ljava/lang/String;

    .line 666
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 665
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$ContactsInfo;->displayName:Ljava/lang/String;

    .line 667
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->mContactsInfo:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$ContactsInfo;

    invoke-static {p3}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->getCoverPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$ContactsInfo;->coverPath:Ljava/lang/String;

    .line 669
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter$ViewHolder;

    .line 670
    .local v9, "viewHolder":Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter$ViewHolder;
    if-nez v9, :cond_2

    .line 671
    new-instance v9, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter$ViewHolder;

    .end local v9    # "viewHolder":Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter$ViewHolder;
    invoke-direct {v9, p0, v4}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter$ViewHolder;-><init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$1;)V

    .line 672
    .restart local v9    # "viewHolder":Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter$ViewHolder;
    const v0, 0x7f120088

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v9, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 673
    const v0, 0x7f120148

    .line 674
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v9, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter$ViewHolder;->avartarImageView:Landroid/widget/ImageView;

    .line 675
    invoke-virtual {p1, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 678
    :cond_2
    const v0, 0x7f12018d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 679
    .local v8, "listDivider":Landroid/view/View;
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    if-nez v0, :cond_3

    .line 680
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v0, v8}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$2300(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Landroid/view/View;)V

    .line 685
    :goto_1
    iget-object v0, v9, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->mContactsInfo:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$ContactsInfo;

    iget-object v1, v1, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$ContactsInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->mContactsInfo:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$ContactsInfo;

    iget-object v0, v0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$ContactsInfo;->phoneNumber:Ljava/lang/String;

    const-string v1, "face"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 687
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->mContactsInfo:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$ContactsInfo;

    iget-object v1, v1, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$ContactsInfo;->displayName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$2500(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Ljava/lang/String;)Lcom/miui/gallery/model/DisplayFolderItem;

    move-result-object v7

    .line 688
    .local v7, "item":Lcom/miui/gallery/model/DisplayFolderItem;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    iget-object v2, v7, Lcom/miui/gallery/model/DisplayFolderItem;->thumbnailPath:Ljava/lang/String;

    .line 689
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v9, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter$ViewHolder;->avartarImageView:Landroid/widget/ImageView;

    sget-object v3, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->sDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    check-cast v7, Lcom/miui/gallery/ui/renameface/FaceDisplayFolderItem;

    .end local v7    # "item":Lcom/miui/gallery/model/DisplayFolderItem;
    iget-object v5, v7, Lcom/miui/gallery/ui/renameface/FaceDisplayFolderItem;->mFacePosRelative:Landroid/graphics/RectF;

    .line 688
    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;)V

    goto/16 :goto_0

    .line 682
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v0, v8}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$2400(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;Landroid/view/View;)V

    goto :goto_1

    .line 692
    :cond_4
    iget-object v0, v9, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter$ViewHolder;->avartarImageView:Landroid/widget/ImageView;

    const v1, 0x7f0200e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 693
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->mContactsInfo:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$ContactsInfo;

    iget-object v0, v0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$ContactsInfo;->coverPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$2600(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Lcom/miui/gallery/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->mContactsInfo:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$ContactsInfo;

    iget-object v1, v1, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$ContactsInfo;->coverPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/BitmapUtils;->safeDecodeBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 695
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_0

    .line 696
    iget-object v0, v9, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter$ViewHolder;->avartarImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;

    iget-object v2, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    .line 697
    invoke-virtual {v2}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11007e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    .line 698
    invoke-virtual {v3}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b019e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v6, v2, v3}, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;-><init>(Landroid/graphics/Bitmap;Ljava/lang/Integer;F)V

    .line 696
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 717
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 718
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->getItemViewTypeByCursor(Landroid/database/Cursor;)I

    move-result v1

    .line 720
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 729
    const/4 v0, 0x2

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v4, 0x7f120026

    const/4 v3, 0x0

    .line 642
    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->getItemViewTypeByCursor(Landroid/database/Cursor;)I

    move-result v1

    iget v2, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->CONTECT_HEADER_VIEW:I

    if-ne v1, v2, :cond_0

    .line 643
    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040097

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 645
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->CONTECT_HEADER_VIEW:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 651
    :goto_0
    return-object v0

    .line 647
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040099

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 649
    .restart local v0    # "view":Landroid/view/View;
    iget v1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$MergeNameAdapter;->NORMAL_VIEW:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method
