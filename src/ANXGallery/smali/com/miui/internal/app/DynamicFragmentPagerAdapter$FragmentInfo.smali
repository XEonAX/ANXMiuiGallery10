.class Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/DynamicFragmentPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FragmentInfo"
.end annotation


# instance fields
.field cP:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field cQ:Landroid/app/Fragment;

.field cR:Landroid/os/Bundle;

.field cS:Landroid/app/ActionBar$Tab;

.field cT:Z

.field final synthetic cU:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

.field tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/DynamicFragmentPagerAdapter;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/app/ActionBar$Tab;",
            "Z)V"
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->cU:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->tag:Ljava/lang/String;

    .line 247
    iput-object p3, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->cP:Ljava/lang/Class;

    .line 248
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->cQ:Landroid/app/Fragment;

    .line 249
    iput-object p4, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->cR:Landroid/os/Bundle;

    .line 250
    iput-object p5, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->cS:Landroid/app/ActionBar$Tab;

    .line 251
    iput-boolean p6, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->cT:Z

    .line 252
    return-void
.end method
