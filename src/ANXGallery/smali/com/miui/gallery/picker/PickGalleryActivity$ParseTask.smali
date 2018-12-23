.class Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;
.super Landroid/os/AsyncTask;
.source "PickGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/picker/PickGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mPickSha1Results:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/gallery/picker/PickGalleryActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/helper/Picker;)V
    .locals 1
    .param p2, "picker"    # Lcom/miui/gallery/picker/helper/Picker;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 239
    const-string v0, "\',\'"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->mPickSha1Results:Ljava/lang/String;

    .line 240
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 244
    iget-object v0, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/picker/PickGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_PICKER:Landroid/net/Uri;

    const-string v2, "sha1"

    .line 245
    invoke-static {v1, v2, v4}, Lcom/miui/gallery/util/UriUtil;->appendGroupBy(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/picker/PickerActivity;->PICKABLE_PROJECTION:[Ljava/lang/String;

    const-string v3, "sha1 IN (\'%s\') AND (localGroupId!=-1000) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->mPickSha1Results:Ljava/lang/String;

    aput-object v7, v5, v9

    .line 247
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "INSTR(\"\'%s\'\", sha1)"

    new-array v7, v8, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->mPickSha1Results:Ljava/lang/String;

    aput-object v8, v7, v9

    .line 249
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 244
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 250
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 252
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 254
    :cond_0
    return-object v6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 235
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 259
    iget-object v4, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$202(Lcom/miui/gallery/picker/PickGalleryActivity;Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;)Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;

    .line 261
    if-nez p1, :cond_0

    .line 262
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "return a null cursor"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 266
    :cond_0
    :try_start_0
    const-string v4, "PickGalleryActivity"

    const-string v5, "Picker capacity: %d, result %d items"

    iget-object v6, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-virtual {v6}, Lcom/miui/gallery/picker/PickGalleryActivity;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v6

    invoke-interface {v6}, Lcom/miui/gallery/picker/helper/Picker;->capacity()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 267
    iget-object v4, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-virtual {v4}, Lcom/miui/gallery/picker/PickGalleryActivity;->getPicker()Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v4

    invoke-interface {v4}, Lcom/miui/gallery/picker/helper/Picker;->getResultType()Lcom/miui/gallery/picker/helper/Picker$ResultType;

    move-result-object v4

    sget-object v5, Lcom/miui/gallery/picker/helper/Picker$ResultType;->ID:Lcom/miui/gallery/picker/helper/Picker$ResultType;

    if-ne v4, v5, :cond_2

    .line 268
    iget-object v4, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v4}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$300(Lcom/miui/gallery/picker/PickGalleryActivity;)Landroid/content/Intent;

    move-result-object v1

    .line 269
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 271
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 302
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "PickGalleryActivity"

    const-string v5, "Parse failed %s"

    invoke-static {v4, v5, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 307
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 273
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1
    :try_start_2
    const-string v4, "pick-result-data"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 274
    iget-object v4, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v4, v1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$400(Lcom/miui/gallery/picker/PickGalleryActivity;Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 305
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 276
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v4, p1}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$500(Lcom/miui/gallery/picker/PickGalleryActivity;Landroid/database/Cursor;)V

    .line 277
    const-string v4, "PickGalleryActivity"

    const-string v5, "picked file: %d, pending: %d"

    iget-object v6, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v6}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$600(Lcom/miui/gallery/picker/PickGalleryActivity;)[Landroid/net/Uri;

    move-result-object v6

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v7}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$700(Lcom/miui/gallery/picker/PickGalleryActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 279
    iget-object v4, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v4}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$700(Lcom/miui/gallery/picker/PickGalleryActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 280
    iget-object v4, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v4}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$800(Lcom/miui/gallery/picker/PickGalleryActivity;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 305
    :catchall_0
    move-exception v4

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v4

    .line 281
    :cond_3
    :try_start_4
    iget-object v4, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v4}, Lcom/miui/gallery/util/SyncUtil;->existXiaomiAccount(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 282
    iget-object v4, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-virtual {v4}, Lcom/miui/gallery/picker/PickGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0035

    iget-object v6, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v6}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$700(Lcom/miui/gallery/picker/PickGalleryActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v9}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$700(Lcom/miui/gallery/picker/PickGalleryActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v4, v3}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 284
    iget-object v4, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v4}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$800(Lcom/miui/gallery/picker/PickGalleryActivity;)V

    goto :goto_2

    .line 285
    .end local v3    # "text":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 286
    iget-object v4, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$900(Lcom/miui/gallery/picker/PickGalleryActivity;Z)V

    goto/16 :goto_2

    .line 289
    :cond_5
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 290
    iget-object v4, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v4}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$600(Lcom/miui/gallery/picker/PickGalleryActivity;)[Landroid/net/Uri;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_6

    .line 291
    iget-object v4, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-virtual {v4}, Lcom/miui/gallery/picker/PickGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d002e

    iget-object v6, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v6}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$700(Lcom/miui/gallery/picker/PickGalleryActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    .line 295
    .restart local v3    # "text":Ljava/lang/String;
    :goto_3
    iget-object v4, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v4, v3}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 296
    iget-object v4, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v4}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$1000(Lcom/miui/gallery/picker/PickGalleryActivity;)V

    goto/16 :goto_2

    .line 293
    .end local v3    # "text":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-virtual {v4}, Lcom/miui/gallery/picker/PickGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e039e

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    invoke-static {v8}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$700(Lcom/miui/gallery/picker/PickGalleryActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/String;
    goto :goto_3

    .line 298
    .end local v3    # "text":Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->this$0:Lcom/miui/gallery/picker/PickGalleryActivity;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/miui/gallery/picker/PickGalleryActivity;->access$900(Lcom/miui/gallery/picker/PickGalleryActivity;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 235
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/picker/PickGalleryActivity$ParseTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
