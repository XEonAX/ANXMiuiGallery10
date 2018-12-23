.class public Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;
.super Ljava/lang/Object;
.source "NexEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$i;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$o;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$n;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$g;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$d;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$q;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$a;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$j;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$t;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$u;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$b;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$s;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$l;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$k;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$r;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$h;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$m;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$EditorInitException;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$c;
    }
.end annotation


# static fields
.field private static D:Ljava/io/File;

.field private static O:Z

.field private static P:I

.field private static Q:I

.field private static R:I

.field private static W:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

.field private static final aF:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;

.field private static ae:Z

.field private static final at:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private E:I

.field private F:I

.field private G:I

.field private H:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;

.field private I:I

.field private J:Ljava/lang/String;

.field private K:I

.field private L:Landroid/view/Surface;

.field private M:I

.field private N:I

.field private S:I

.field private T:Ljava/lang/Thread;

.field private U:Lcom/nexstreaming/kminternal/nexvideoeditor/d;

.field private V:Lcom/nexstreaming/app/common/task/Task;

.field private X:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$m;

.field private Y:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$h;

.field private Z:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$r;

.field private a:I

.field private aA:I

.field private aB:I

.field private aC:Z

.field private aD:I

.field private aE:I

.field private aG:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$j;

.field private aH:F

.field private aa:Lcom/nexstreaming/app/common/task/Task;

.field private ab:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$k;

.field private ac:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$l;

.field private ad:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$s;

.field private af:Z

.field private ag:Lcom/nexstreaming/app/common/task/ResultTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nexstreaming/app/common/task/ResultTask",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private ah:Landroid/view/SurfaceHolder$Callback;

.field private ai:Z

.field private aj:Z

.field private ak:Z

.field private al:I

.field private am:I

.field private an:Z

.field private ao:Z

.field private ap:Ljava/lang/String;

.field private aq:Lcom/nexstreaming/app/common/task/Task;

.field private ar:I

.field private as:Landroid/media/ImageReader;

.field private au:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private av:Z

.field private aw:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;

.field private ax:Ljava/lang/Object;

.field private ay:Z

.field private az:Z

.field private b:Z

.field private c:Z

.field private d:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

.field private e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;

.field private f:Lcom/nexstreaming/kminternal/nexvideoeditor/c;

.field private g:[Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$t;

.field private h:[Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$a;

.field private i:[Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$a;

.field private j:Z

.field private k:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$d;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$d;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$g;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$n;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$o;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$o;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$i;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$q;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 112
    sput-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->D:Ljava/io/File;

    .line 135
    sput-boolean v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->O:Z

    .line 140
    const/16 v0, 0x500

    sput v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->P:I

    .line 141
    const/16 v0, 0x2d0

    sput v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->Q:I

    .line 142
    sput v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->R:I

    .line 303
    sput-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->W:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    .line 1383
    sput-boolean v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ae:Z

    .line 2261
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->at:Ljava/util/concurrent/ExecutorService;

    .line 2852
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$9;

    invoke-direct {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$9;-><init>()V

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aF:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;

    .line 3612
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 3653
    :try_start_0
    const-string v0, "nexeditorsdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3657
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3659
    :goto_0
    return-void

    .line 3654
    :catch_0
    move-exception v0

    .line 3655
    :try_start_1
    const-string v2, "NexEditor.java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NexEditor.java] nexeditor load failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3657
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;Ljava/lang/String;ILcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$d;[I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$EditorInitException;
        }
    .end annotation

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a:I

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b:Z

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->c:Z

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/c;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->g:[Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$t;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->h:[Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$a;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->i:[Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$a;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->j:Z

    .line 92
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->k:Ljava/util/Deque;

    .line 93
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->l:Ljava/util/Deque;

    .line 94
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->m:Ljava/util/Deque;

    .line 95
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->n:Ljava/util/Deque;

    .line 96
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->o:Ljava/util/Deque;

    .line 97
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->p:Ljava/util/Deque;

    .line 98
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->q:Ljava/util/Deque;

    .line 99
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->r:Ljava/util/Deque;

    .line 100
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->s:Ljava/util/Deque;

    .line 101
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->t:Ljava/util/Deque;

    .line 102
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->u:Ljava/util/Deque;

    .line 104
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->v:Ljava/util/Deque;

    .line 105
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->w:Ljava/util/Deque;

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->x:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$q;

    .line 107
    const/4 v0, 0x1

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->y:I

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->z:I

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->A:I

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->B:I

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->C:I

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->H:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->I:I

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->J:Ljava/lang/String;

    .line 130
    const/4 v0, 0x1

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->M:I

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->N:I

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->S:I

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->T:Ljava/lang/Thread;

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->U:Lcom/nexstreaming/kminternal/nexvideoeditor/d;

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->V:Lcom/nexstreaming/app/common/task/Task;

    .line 766
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aa:Lcom/nexstreaming/app/common/task/Task;

    .line 1419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->af:Z

    .line 1612
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$13;

    invoke-direct {v0, p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$13;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ah:Landroid/view/SurfaceHolder$Callback;

    .line 1735
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ai:Z

    .line 1736
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aj:Z

    .line 1737
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ak:Z

    .line 1897
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->am:I

    .line 1898
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->an:Z

    .line 1899
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ao:Z

    .line 2063
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aq:Lcom/nexstreaming/app/common/task/Task;

    .line 2112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->as:Landroid/media/ImageReader;

    .line 2262
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->au:Ljava/util/concurrent/BlockingQueue;

    .line 2263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->av:Z

    .line 2287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aw:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;

    .line 2302
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ax:Ljava/lang/Object;

    .line 2596
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ay:Z

    .line 2597
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->az:Z

    .line 2598
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aA:I

    .line 2599
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aB:I

    .line 2600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aC:Z

    .line 2601
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aD:I

    .line 2602
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aE:I

    .line 4264
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aH:F

    .line 377
    sput-object p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->W:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    .line 379
    const v0, 0x134a958e

    xor-int v4, p4, v0

    .line 380
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 381
    const-string v1, "libnexeditorsdk.so"

    .line 382
    if-nez v0, :cond_0

    .line 383
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No files directory - cannot play video - relates to Android issue: 8886!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_0
    const-string v0, ""

    .line 385
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    check-cast v0, Ldalvik/system/BaseDexClassLoader;

    const-string v1, "nexcralbody_mc_jb"

    invoke-virtual {v0, v1}, Ldalvik/system/BaseDexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_1

    .line 387
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    const-string v1, "NexEditor.java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[nexlib] getApplicationInfo mc libarays in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 444
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->c(Ljava/lang/String;)V

    .line 445
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->initUserData()I

    move-result v0

    xor-int/2addr v4, v0

    if-nez p6, :cond_a

    const/4 v5, 0x0

    :goto_1
    move-object v0, p0

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->createEditor(Ljava/lang/String;Ljava/lang/String;II[I)I

    move-result v0

    .line 446
    if-eqz v0, :cond_b

    .line 447
    new-instance v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$EditorInitException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Editor Initialization Failed (result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$EditorInitException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 394
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    :cond_2
    const-string v1, "NexEditor.java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[nexlib] getApplicationInfo says libs are in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v1, "NexEditor.java"

    const-string v2, "[nexlib] sdk lib name: libnexeditorsdk.so"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance v1, Ljava/io/File;

    const-string v2, "libnexeditorsdk.so"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 401
    const-string v1, "NexEditor.java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[nexlib] libs found in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto/16 :goto_0

    .line 404
    :cond_3
    const/4 v2, 0x0

    .line 405
    const-string v1, "java.library.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 406
    if-eqz v1, :cond_13

    .line 407
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 409
    const/4 v1, 0x0

    :goto_2
    array-length v5, v3

    if-ge v1, v5, :cond_13

    .line 410
    aget-object v5, v3, v1

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 411
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    .line 414
    :cond_4
    const-string v5, "NexEditor.java"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[nexlib] trying: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    new-instance v5, Ljava/io/File;

    aget-object v6, v3, v1

    const-string v7, "libnexeditorsdk.so"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 416
    const-string v0, "NexEditor.java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[nexlib] libs found in: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v5, v3, v1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    aget-object v1, v3, v1

    .line 418
    const/4 v0, 0x1

    move v8, v0

    move-object v0, v1

    move v1, v8

    .line 426
    :goto_3
    if-nez v1, :cond_9

    .line 427
    const-string v1, "/arm64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 428
    const-string v0, "/system/lib64/"

    .line 434
    :goto_4
    const-string v1, "NexEditor.java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[nexlib]2 trying: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v1, Ljava/io/File;

    const-string v2, "libnexeditorsdk.so"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 436
    const-string v1, "NexEditor.java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[nexlib]2 libs found in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto/16 :goto_0

    .line 421
    :cond_5
    const-string v5, "NexEditor.java"

    const-string v6, "[nexlib] libs NOT FOUND!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 429
    :cond_6
    const-string v1, "/x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 430
    const-string v0, "/system/lib64/"

    goto :goto_4

    .line 432
    :cond_7
    const-string v0, "/system/lib/"

    goto :goto_4

    .line 438
    :cond_8
    const-string v1, "NexEditor.java"

    const-string v2, "[nexlib]2 libs NOT FOUND!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object v1, v0

    goto/16 :goto_0

    .line 445
    :cond_a
    array-length v0, p6

    add-int/lit8 v0, v0, 0x2

    invoke-static {p6, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    goto/16 :goto_1

    .line 452
    :cond_b
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getDeviceProfile()Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getUserConfigSettings()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 454
    const-string v0, "HardWareCodecMemSize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getDeviceProfile()Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getHardwareCodecMemSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const-string v0, "HardWareDecMaxCount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getDeviceProfile()Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getHardwareDecMaxCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-string v0, "HardWareEncMaxCount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getDeviceProfile()Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getHardwareEncMaxCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string v0, "FeatureVersion"

    const-string v1, "3"

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string/jumbo v0, "useNexEditorSDK"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string v0, "DeviceExtendMode"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string v0, "forceDirectExport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getDeviceProfile()Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getForceDirectExport()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v0, "SupportedMaxFPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getDeviceProfile()Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getMaxSupportedFPS()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v0, "InputMaxFPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getDeviceProfile()Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getMaxSupportedFPS()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v0, "SupportFrameTimeChecker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getDeviceProfile()Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getSupportedTimeCheker()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const-string v0, "DeviceMaxLightLevel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getDeviceProfile()Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getDeviceMaxLightLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const-string v0, "DeviceMaxGamma"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getDeviceProfile()Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getDeviceMaxGamma()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :goto_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 493
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 494
    const/16 v0, 0x400

    move v1, v0

    .line 495
    :goto_6
    mul-int/lit8 v0, v1, 0x2

    if-ge v0, v2, :cond_e

    .line 496
    mul-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_6

    .line 472
    :cond_c
    const-string v0, "HardWareCodecMemSize"

    const-string v1, "8912896"

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v0, "Xiaomi"

    const-string v1, "Gionee"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 474
    const-string v0, "HardWareDecMaxCount"

    const-string v1, "2"

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :goto_7
    const-string v0, "HardWareEncMaxCount"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-string v0, "FeatureVersion"

    const-string v1, "3"

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const-string/jumbo v0, "useNexEditorSDK"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const-string v0, "forceDirectExport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getDeviceProfile()Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getForceDirectExport()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const-string v0, "DeviceExtendMode"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const-string v0, "InputMaxFPS"

    const-string v1, "120"

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const-string v0, "SupportFrameTimeChecker"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 476
    :cond_d
    const-string v0, "HardWareDecMaxCount"

    const-string v1, "4"

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 498
    :cond_e
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->E:I

    .line 499
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->F:I

    .line 500
    mul-int v0, v1, v1

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->G:I

    .line 502
    const-string v0, "JpegMaxWidthFactor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->E:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const-string v0, "JpegMaxHeightFactor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->E:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const-string v0, "JpegMaxSizeFactor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->G:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const-string v0, "UseAndroidJPEG"

    const-string v3, "1"

    invoke-virtual {p0, v0, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const-string/jumbo v0, "supportPeakMeter"

    const-string v3, "0"

    invoke-virtual {p0, v0, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v0, 0x0

    .line 510
    const-string v3, "Xiaomi"

    const-string v4, "Vivo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 511
    const/4 v0, 0x1

    .line 513
    :cond_f
    const-string/jumbo v3, "skipPrefetchEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const-string v0, "NexEditor.java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "largestDimension = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " selectedSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;

    if-eq v0, p2, :cond_11

    .line 519
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;

    if-eqz v0, :cond_10

    .line 520
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->linkToEditor(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)V

    .line 522
    :cond_10
    invoke-virtual {p2, p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->linkToEditor(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)V

    .line 523
    iput-object p2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;

    .line 525
    :cond_11
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    invoke-static {p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->e()Lcom/nexstreaming/kminternal/nexvideoeditor/a;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Landroid/content/Context;Lcom/nexstreaming/kminternal/nexvideoeditor/a;Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$d;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    .line 526
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    invoke-direct {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setEventHandler(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;)I

    .line 529
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "nexasset.jpg"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 530
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setInputFile(Ljava/io/FileDescriptor;IJJ)I

    move-result v1

    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->S:I

    .line 531
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 532
    const-string v0, "NexEditor.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assetNativeFD is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->S:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :goto_8
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/assetpackage/AssetPackageReader;->a()[Ljava/lang/String;

    move-result-object v0

    .line 539
    array-length v1, v0

    if-lez v1, :cond_12

    .line 540
    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a([Ljava/lang/String;)V

    .line 542
    :cond_12
    return-void

    .line 533
    :catch_0
    move-exception v0

    .line 534
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :cond_13
    move v1, v2

    goto/16 :goto_3
.end method

.method private B()Ljava/lang/String;
    .locals 2

    .prologue
    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " m_seekSerial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; m_isSeeking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; m_isPendingSeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->az:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; m_pendingSeekLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; m_setTimeDoneListeners.size()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->o:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private C()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 648
    .line 649
    const-string v1, ""

    .line 650
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->o:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;

    .line 651
    add-int/lit8 v2, v2, 0x1

    .line 652
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n     "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " m_reqTime="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " m_serialNumber="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;->b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 653
    iget-object v4, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;->e:[Ljava/lang/StackTraceElement;

    if-eqz v4, :cond_0

    .line 655
    iget-object v6, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;->e:[Ljava/lang/StackTraceElement;

    array-length v7, v6

    move v4, v3

    move v0, v3

    :goto_0
    if-ge v4, v7, :cond_0

    aget-object v8, v6, v4

    .line 656
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 657
    const-string v10, "dalvik.system.VMStack"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "java.lang.Thread"

    .line 658
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "dalvik.system.VMStack"

    .line 659
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "android.app.ActivityThread"

    .line 660
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "java.lang.reflect.Method"

    .line 661
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "com.android.internal.os.ZygoteInit"

    .line 662
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "com.android.internal.os.ZygoteInit$MethodAndArgsCaller:"

    .line 663
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "dalvik.system.NativeStart"

    .line 664
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "android.os.Looper"

    .line 665
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 667
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 655
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 670
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "\n          "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ": "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "::"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "("

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ")"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 675
    :cond_3
    return-object v1
.end method

.method private D()V
    .locals 6

    .prologue
    .line 2718
    const/4 v0, 0x0

    .line 2719
    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->o:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;

    .line 2720
    const-string v3, "NexEditor.java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "     "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": t="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;->b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 2722
    goto :goto_0

    .line 2723
    :cond_0
    return-void
.end method

.method private E()V
    .locals 2

    .prologue
    .line 4193
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ap:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4194
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ap:Ljava/lang/String;

    const-string/jumbo v1, "writefd://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4195
    const-string/jumbo v0, "writefd://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4196
    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ap:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4197
    invoke-direct {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->closeOutputFile(I)V

    .line 4198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ap:Ljava/lang/String;

    .line 4211
    :cond_0
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 157
    sget v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->P:I

    return v0
.end method

.method static synthetic a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;I)I
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->startPlay(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Landroid/view/Surface;)I
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->prepareSurface(Landroid/view/Surface;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;)I
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->c(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Landroid/media/ImageReader;)Landroid/media/ImageReader;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->as:Landroid/media/ImageReader;

    return-object p1
.end method

.method static synthetic a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Lcom/nexstreaming/app/common/task/ResultTask;)Lcom/nexstreaming/app/common/task/ResultTask;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ag:Lcom/nexstreaming/app/common/task/ResultTask;

    return-object p1
.end method

.method static synthetic a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Lcom/nexstreaming/app/common/task/Task;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->V:Lcom/nexstreaming/app/common/task/Task;

    return-object v0
.end method

.method static synthetic a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;)Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->H:Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker$ColorFormat;

    return-object p1
.end method

.method public static a(III)V
    .locals 0

    .prologue
    .line 151
    sput p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->P:I

    .line 152
    sput p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->Q:I

    .line 153
    sput p2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->R:I

    .line 154
    return-void
.end method

.method private a(ILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$o;)V
    .locals 2

    .prologue
    .line 1901
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->am:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->am:I

    .line 1902
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->an:Z

    .line 1903
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->j:Z

    .line 1904
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->am:I

    .line 1905
    new-instance v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$3;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$3;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;IILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$o;)V

    invoke-direct {p0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;)V

    .line 1922
    return-void
.end method

.method private a(IZILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2658
    const-string v3, "NexEditor.java"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in seek(display="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p4, :cond_2

    const-string v0, "null"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") m_seekSerial="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aE:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " seeking="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ay:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "; pendingSeek="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->az:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "; pendingSeekLocation="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aA:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    if-eqz p4, :cond_0

    .line 2661
    invoke-static {p4, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;I)I

    .line 2662
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aE:I

    invoke-static {p4, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;->b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;I)I

    .line 2668
    :cond_0
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ay:Z

    if-eqz v0, :cond_4

    .line 2670
    if-eqz p2, :cond_3

    .line 2671
    const-string v0, "NexEditor.java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seek_internal: m_isPendingSeek="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->az:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> true, flag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2672
    iput-boolean v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->az:Z

    .line 2673
    iput p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aA:I

    .line 2674
    iput p3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aB:I

    .line 2707
    :goto_1
    if-eqz p4, :cond_1

    .line 2708
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->o:Ljava/util/Deque;

    invoke-interface {v0, p4}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 2709
    const-string v0, "NexEditor.java"

    const-string v1, "m_setTimeDoneListeners - Added listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->D()V

    .line 2715
    :cond_1
    :goto_2
    return-void

    :cond_2
    move-object v0, p4

    .line 2658
    goto/16 :goto_0

    .line 2676
    :cond_3
    iput-boolean v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aC:Z

    .line 2677
    iput p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aD:I

    goto :goto_1

    .line 2682
    :cond_4
    iput-boolean v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->j:Z

    .line 2683
    invoke-direct {p0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->f(Z)V

    .line 2684
    if-eqz p2, :cond_5

    move v0, v1

    :goto_3
    invoke-direct {p0, p1, v0, p3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setTime(III)I

    move-result v0

    .line 2685
    if-eqz v0, :cond_6

    .line 2686
    const-string v1, "NexEditor.java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTime ERROR RETURN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    invoke-direct {p0, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->f(Z)V

    .line 2688
    if-eqz p4, :cond_1

    .line 2689
    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->fromValue(I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V

    goto :goto_2

    :cond_5
    move v0, v2

    .line 2684
    goto :goto_3

    .line 2693
    :cond_6
    const-string v1, "NexEditor.java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTime SEEK STARTED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    iput p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aA:I

    .line 2698
    if-eqz p2, :cond_7

    .line 2699
    const-string v0, "NexEditor.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seek_internal[display]: m_isPendingSeek="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->az:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " -> false"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    iput-boolean v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->az:Z

    .line 2704
    :goto_4
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aE:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aE:I

    goto/16 :goto_1

    .line 2702
    :cond_7
    iput-boolean v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aC:Z

    goto :goto_4
.end method

.method public static a([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 4156
    invoke-static {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setEncInfo([Ljava/lang/String;)V

    .line 4157
    return-void
.end method

.method static synthetic a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Z)Z
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ak:Z

    return p1
.end method

.method private native asyncLoadList([Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;[Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;I)I
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 161
    sget v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->Q:I

    return v0
.end method

.method private b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;)I
    .locals 2

    .prologue
    .line 1727
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->captureCurrentFrame()I

    move-result v0

    .line 1728
    if-nez v0, :cond_0

    .line 1730
    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->v:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 1732
    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;I)I
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setGIFMode(I)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Lcom/nexstreaming/app/common/task/ResultTask;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ag:Lcom/nexstreaming/app/common/task/ResultTask;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1387
    :try_start_0
    invoke-static {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1390
    :goto_0
    return-object v0

    .line 1388
    :catch_0
    move-exception v0

    .line 1389
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ae:Z

    .line 1390
    const-string v0, ""

    goto :goto_0
.end method

.method private b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;IZ)V
    .locals 2

    .prologue
    .line 1561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->c(Ljava/lang/String;I)I

    .line 1562
    return-void

    .line 1561
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2613
    const-string v0, "NexEditor.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimeCancel m_isPendingSeek: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->az:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    iput-boolean v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->az:Z

    .line 2615
    iput-boolean v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aC:Z

    .line 2617
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ay:Z

    if-nez v0, :cond_1

    .line 2618
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {p1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V

    .line 2625
    :cond_0
    :goto_0
    return-void

    .line 2622
    :cond_1
    if-eqz p1, :cond_0

    .line 2623
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->t:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Z)Z
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aj:Z

    return p1
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 165
    sget v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->R:I

    return v0
.end method

.method private c(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 1573
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->I:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 1574
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->J:Ljava/lang/String;

    .line 1575
    iput p2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->K:I

    .line 1576
    const/4 v0, 0x0

    .line 1581
    :cond_0
    :goto_0
    return v0

    .line 1578
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->fastOptionPreview(Ljava/lang/String;I)I

    move-result v0

    .line 1579
    if-nez v0, :cond_0

    .line 1580
    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->I:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->I:I

    goto :goto_0
.end method

.method static synthetic c(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->L:Landroid/view/Surface;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 4151
    invoke-static {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setPacakgeName4Protection(Ljava/lang/String;)V

    .line 4152
    return-void
.end method

.method public static c(Z)V
    .locals 0

    .prologue
    .line 4226
    sput-boolean p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->O:Z

    .line 4227
    return-void
.end method

.method static synthetic c(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Z)Z
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->an:Z

    return p1
.end method

.method private native captureCurrentFrame()I
.end method

.method private native clearRenderItems(I)I
.end method

.method private native clearScreen(I)I
.end method

.method private native closeInputFile(II)I
.end method

.method private native closeOutputFile(I)V
.end method

.method private native createEditor(Ljava/lang/String;Ljava/lang/String;II[I)I
.end method

.method private native createRenderItem(Ljava/lang/String;I)I
.end method

.method static synthetic d(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aj:Z

    return v0
.end method

.method static synthetic d(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Z)Z
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ao:Z

    return p1
.end method

.method private native deleteClipID(I)I
.end method

.method private native destroyEditor()I
.end method

.method private native drawRenderItemOverlay(ILjava/lang/String;IIII[FFFFFF)I
.end method

.method static synthetic e(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->al:I

    return v0
.end method

.method static synthetic e(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Z)Z
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->av:Z

    return p1
.end method

.method private native encodeProject(Ljava/lang/String;IIIJIIIIIIIIII)I
.end method

.method private native encodeProjectJpeg(Landroid/view/Surface;Ljava/lang/String;IIII)I
.end method

.method private f(Z)V
    .locals 2

    .prologue
    .line 2844
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ay:Z

    if-ne p1, v0, :cond_1

    .line 2850
    :cond_0
    :goto_0
    return-void

    .line 2846
    :cond_1
    iput-boolean p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ay:Z

    .line 2847
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/c;

    if-eqz v0, :cond_0

    .line 2848
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/c;

    iget-boolean v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ay:Z

    invoke-interface {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/c;->a(Z)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->an:Z

    return v0
.end method

.method private native fastOptionPreview(Ljava/lang/String;I)I
.end method

.method static synthetic g(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->am:I

    return v0
.end method

.method private native getAudioSessionID()I
.end method

.method private native getClipAudioThumb(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private native getClipInfoSync(Ljava/lang/String;Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;II)I
.end method

.method private native getClipStopThumb(I)I
.end method

.method private native getClipVideoThumb(Ljava/lang/String;Ljava/lang/String;IIIIIII)I
.end method

.method private native getClipVideoThumbWithTimeTable(Ljava/lang/String;Ljava/lang/String;III[III)I
.end method

.method private native getNativeSDKInfoWM()I
.end method

.method private static native getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native getTexNameForClipID(II)I
.end method

.method private native getTexNameForMask(I)I
.end method

.method private native getTimeThumbData(I)[B
.end method

.method static synthetic h(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Ljava/util/Deque;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->q:Ljava/util/Deque;

    return-object v0
.end method

.method private native highlightStart(Ljava/lang/String;IIIILjava/lang/String;IIIJIII)I
.end method

.method private native highlightStop()I
.end method

.method static synthetic i(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Landroid/media/ImageReader;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->as:Landroid/media/ImageReader;

    return-object v0
.end method

.method private native initUserData()I
.end method

.method static synthetic j(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->av:Z

    return v0
.end method

.method static synthetic k(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aw:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;

    return-object v0
.end method

.method static synthetic l(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->au:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private native loadList([Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;[Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;I)I
.end method

.method private native loadRenderItem(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private native loadTheme(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method static synthetic m(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ay:Z

    return v0
.end method

.method private native prepareSurface(Landroid/view/Surface;)I
.end method

.method private native pushLoadedBitmap(Ljava/lang/String;[IIII)I
.end method

.method private native releaseLUTTexture(I)I
.end method

.method private native releaseRenderItem(II)I
.end method

.method private native removeBitmap(Ljava/lang/String;)I
.end method

.method private native resetFaceDetectInfo(I)I
.end method

.method private native set360VideoTrackPosition(III)I
.end method

.method private static native setEncInfo([Ljava/lang/String;)V
.end method

.method private native setEventHandler(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;)I
.end method

.method private native setGIFMode(I)I
.end method

.method private native setInputFile(Ljava/io/FileDescriptor;IJJ)I
.end method

.method private static native setPacakgeName4Protection(Ljava/lang/String;)V
.end method

.method private native setPreviewScaleFactor(F)I
.end method

.method private native setRenderToDefault(I)I
.end method

.method private native setRenderToMask(I)I
.end method

.method private native setThumbnailRoutine(I)I
.end method

.method private native setTime(III)I
.end method

.method private native setVideoTrackUUID(I[B)I
.end method

.method private native startPlay(I)I
.end method

.method private native stopPlay(I)I
.end method

.method private native transcodingStart(Ljava/lang/String;Ljava/lang/String;IIIIIJIILjava/lang/String;)I
.end method

.method private native transcodingStop()I
.end method

.method private native updateRenderInfo(IIIIIIIIIIIIII)I
.end method


# virtual methods
.method public A()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4239
    invoke-direct {p0, v0, v0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->set360VideoTrackPosition(III)I

    .line 4240
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized a(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 16

    .prologue
    .line 634
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p4

    iget v7, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p4

    iget v8, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p5

    iget v12, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p5

    iget v13, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p5

    iget v14, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p5

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v11, p2

    invoke-direct/range {v1 .. v15}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->updateRenderInfo(IIIIIIIIIIIIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public a(ILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$g;)I
    .locals 2

    .prologue
    .line 2995
    if-nez p2, :cond_0

    .line 2996
    new-instance p2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$11;

    invoke-direct {p2, p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$11;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)V

    .line 3007
    :cond_0
    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->deleteClipID(I)I

    move-result v0

    .line 3008
    if-nez v0, :cond_1

    .line 3010
    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->m:Ljava/util/Deque;

    invoke-interface {v1, p2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 3012
    :cond_1
    return v0
.end method

.method public a(ILjava/lang/String;IIII[FFFFFF)I
    .locals 1

    .prologue
    .line 1315
    invoke-direct/range {p0 .. p12}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->drawRenderItemOverlay(ILjava/lang/String;IIII[FFFFFF)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1291
    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->removeBitmap(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 1320
    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->createRenderItem(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;IIIIII)I
    .locals 15

    .prologue
    .line 4160
    const/4 v5, 0x0

    const-string v6, "dummy"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide v10, 0x7fffffffffffffffL

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    invoke-direct/range {v0 .. v14}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->highlightStart(Ljava/lang/String;IIIILjava/lang/String;IIIJIII)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;[IIII)I
    .locals 1

    .prologue
    .line 1296
    invoke-direct/range {p0 .. p5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->pushLoadedBitmap(Ljava/lang/String;[IIII)I

    move-result v0

    return v0
.end method

.method public a([Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;[Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;I)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 4072
    .line 4073
    if-eqz p1, :cond_1

    .line 4074
    array-length v3, p1

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, p1, v2

    .line 4075
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipID:I

    if-le v5, v0, :cond_0

    .line 4076
    iget v0, v4, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipID:I

    .line 4074
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 4080
    :cond_2
    if-eqz p2, :cond_4

    .line 4081
    array-length v2, p2

    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, p2, v1

    .line 4082
    if-eqz v3, :cond_3

    iget v4, v3, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipID:I

    if-le v4, v0, :cond_3

    .line 4083
    iget v0, v3, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipID:I

    .line 4081
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4087
    :cond_4
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a:I

    .line 4088
    invoke-direct {p0, p1, p2, p3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->loadList([Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;[Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;I)I

    move-result v0

    .line 4091
    return v0
.end method

.method public a(Landroid/content/Context;)Lcom/nexstreaming/app/common/task/Task;
    .locals 4

    .prologue
    .line 259
    const-string v0, "NexEditor.java"

    const-string v1, "detectAndSetEditorColorFormat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->V:Lcom/nexstreaming/app/common/task/Task;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Lcom/nexstreaming/app/common/task/Task;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/task/Task;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->V:Lcom/nexstreaming/app/common/task/Task;

    .line 263
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getDeviceProfile()Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getNeedsColorFormatCheck()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    invoke-static {p1}, Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/ColorFormatChecker;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/task/ResultTask;

    move-result-object v0

    new-instance v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$10;

    invoke-direct {v1, p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$10;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/ResultTask;->onResultAvailable(Lcom/nexstreaming/app/common/task/ResultTask$OnResultAvailableListener;)Lcom/nexstreaming/app/common/task/ResultTask;

    move-result-object v0

    new-instance v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$1;

    invoke-direct {v1, p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$1;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)V

    .line 277
    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/ResultTask;->onFailure(Lcom/nexstreaming/app/common/task/Task$OnFailListener;)Lcom/nexstreaming/app/common/task/ResultTask;

    .line 288
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->V:Lcom/nexstreaming/app/common/task/Task;

    return-object v0

    .line 284
    :cond_1
    const-string v0, "NexEditor.java"

    const-string v1, "Skip checking color format (not needed)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->V:Lcom/nexstreaming/app/common/task/Task;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/nexstreaming/app/common/task/Task$Event;

    const/4 v2, 0x0

    sget-object v3, Lcom/nexstreaming/app/common/task/Task$Event;->COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/Task;->signalEvent([Lcom/nexstreaming/app/common/task/Task$Event;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;IIIJIZII)Lcom/nexstreaming/app/common/task/Task;
    .locals 21

    .prologue
    .line 1936
    new-instance v2, Lcom/nexstreaming/app/common/task/Task;

    invoke-direct {v2}, Lcom/nexstreaming/app/common/task/Task;-><init>()V

    .line 1937
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aq:Lcom/nexstreaming/app/common/task/Task;

    if-eqz v3, :cond_0

    .line 1938
    sget-object v3, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->ALREADY_EXPORTING:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v2, v3}, Lcom/nexstreaming/app/common/task/Task;->sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    .line 1950
    :goto_0
    return-object v2

    .line 1941
    :cond_0
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ar:I

    .line 1942
    if-eqz p8, :cond_1

    move/from16 v10, p7

    :goto_1
    const/16 v11, 0xbb8

    const/16 v12, 0x780

    const/16 v13, 0x438

    const/high16 v15, 0x20000

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x10010300

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move/from16 v14, p9

    move/from16 v19, p10

    invoke-direct/range {v3 .. v19}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->encodeProject(Ljava/lang/String;IIIJIIIIIIIIII)I

    move-result v3

    .line 1943
    if-eqz v3, :cond_2

    .line 1944
    invoke-static {v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->fromValue(I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v3

    .line 1945
    invoke-virtual {v2, v3}, Lcom/nexstreaming/app/common/task/Task;->sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    goto :goto_0

    .line 1942
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 1948
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ap:Ljava/lang/String;

    .line 1949
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aq:Lcom/nexstreaming/app/common/task/Task;

    .line 1950
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aq:Lcom/nexstreaming/app/common/task/Task;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;IIIJIZIIIIII)Lcom/nexstreaming/app/common/task/Task;
    .locals 21

    .prologue
    .line 2045
    new-instance v2, Lcom/nexstreaming/app/common/task/Task;

    invoke-direct {v2}, Lcom/nexstreaming/app/common/task/Task;-><init>()V

    .line 2046
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aq:Lcom/nexstreaming/app/common/task/Task;

    if-eqz v3, :cond_0

    .line 2047
    sget-object v3, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->ALREADY_EXPORTING:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v2, v3}, Lcom/nexstreaming/app/common/task/Task;->sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    .line 2059
    :goto_0
    return-object v2

    .line 2050
    :cond_0
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ar:I

    .line 2051
    if-eqz p8, :cond_1

    move/from16 v10, p7

    :goto_1
    const/16 v12, 0x780

    const/16 v13, 0x438

    const/high16 v15, 0x20000

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move/from16 v11, p12

    move/from16 v14, p9

    move/from16 v16, p10

    move/from16 v17, p11

    move/from16 v18, p13

    move/from16 v19, p14

    invoke-direct/range {v3 .. v19}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->encodeProject(Ljava/lang/String;IIIJIIIIIIIIII)I

    move-result v3

    .line 2052
    if-eqz v3, :cond_2

    .line 2053
    invoke-static {v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->fromValue(I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v3

    .line 2054
    invoke-virtual {v2, v3}, Lcom/nexstreaming/app/common/task/Task;->sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    goto :goto_0

    .line 2051
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 2057
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ap:Ljava/lang/String;

    .line 2058
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aq:Lcom/nexstreaming/app/common/task/Task;

    .line 2059
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aq:Lcom/nexstreaming/app/common/task/Task;

    goto :goto_0
.end method

.method public a(IIIIILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2306
    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ax:Ljava/lang/Object;

    monitor-enter v1

    .line 2307
    :try_start_0
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aj:Z

    if-eqz v0, :cond_0

    .line 2308
    const-string v0, "NexEditor.java"

    const-string v2, "exportImageFormat already exporting"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->INVALID_STATE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    monitor-exit v1

    .line 2591
    :goto_0
    return-object v0

    .line 2311
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aj:Z

    .line 2312
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2314
    if-nez p6, :cond_1

    .line 2315
    const-string v0, "NexEditor.java"

    const-string v1, "exportImageFormat ExportImageCollback is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    iput-boolean v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aj:Z

    .line 2317
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->INVALID_STATE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    goto :goto_0

    .line 2312
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2319
    :cond_1
    iput-object p6, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aw:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$v;

    .line 2329
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ak:Z

    if-nez v0, :cond_3

    .line 2330
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->az:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ay:Z

    if-eqz v0, :cond_5

    :cond_2
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aA:I

    :goto_1
    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->al:I

    .line 2332
    :cond_3
    const-string v0, "NexEditor.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  exportImageFormat mCaptureOriginalTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->al:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->au:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 2335
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->au:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 2336
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->au:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 2338
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->as:Landroid/media/ImageReader;

    if-nez v0, :cond_4

    .line 2339
    const/4 v0, 0x2

    invoke-static {p1, p2, v4, v0}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->as:Landroid/media/ImageReader;

    .line 2342
    :cond_4
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "exportImageFormat"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2343
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2344
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2346
    const-string v0, "NexEditor.java"

    const-string v2, "  exportImageFormat 1"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->as:Landroid/media/ImageReader;

    new-instance v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$6;

    invoke-direct {v2, p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$6;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)V

    invoke-virtual {v0, v2, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 2417
    const-string v0, "NexEditor.java"

    const-string v1, "  exportImageFormat 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;

    invoke-direct {v0, p0, p4, p5, p3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;III)V

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->at:Ljava/util/concurrent/ExecutorService;

    new-array v2, v3, [Ljava/lang/Void;

    .line 2588
    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$7;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2590
    const-string v0, "NexEditor.java"

    const-string v1, "  exportImageFormat 3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    goto/16 :goto_0

    .line 2330
    :cond_5
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->A:I

    goto :goto_1
.end method

.method public a(IIILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 2116
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aj:Z

    if-eqz v0, :cond_0

    .line 2117
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->INVALID_STATE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 2256
    :goto_0
    return-object v0

    .line 2120
    :cond_0
    iput-boolean v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aj:Z

    .line 2122
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ak:Z

    if-nez v0, :cond_2

    .line 2123
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->az:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ay:Z

    if-eqz v0, :cond_5

    :cond_1
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aA:I

    :goto_1
    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->al:I

    .line 2124
    :cond_2
    const-string v0, "NexEditor.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image Capture mCaptureOriginalTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->al:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    new-instance v7, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$4;

    invoke-direct {v7, p0, p4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$4;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;)V

    .line 2194
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->as:Landroid/media/ImageReader;

    if-nez v0, :cond_3

    .line 2195
    const-string v0, "NexEditor"

    const-string v1, "image Capture create ImageReader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    const/4 v0, 0x2

    invoke-static {p1, p2, v3, v0}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->as:Landroid/media/ImageReader;

    .line 2199
    :cond_3
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->as:Landroid/media/ImageReader;

    new-instance v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$5;

    invoke-direct {v1, p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$5;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 2248
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->as:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 2250
    const-string v2, " "

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->encodeProjectJpeg(Landroid/view/Surface;Ljava/lang/String;IIII)I

    move-result v0

    .line 2251
    if-nez v0, :cond_4

    .line 2253
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->v:Ljava/util/Deque;

    invoke-interface {v0, v7}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 2256
    :cond_4
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    goto :goto_0

    .line 2123
    :cond_5
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->A:I

    goto :goto_1
.end method

.method public a(ILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;
    .locals 6

    .prologue
    const v5, 0x7fff0002

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1745
    const v0, 0x7fff0001

    if-ne p1, v0, :cond_4

    .line 1746
    const-string v1, "NexEditor.java"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capture request : captureTime=CAPTURE_CURRENT t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->A:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aj:Z

    if-eqz v0, :cond_1

    const-string v0, "in-progress "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ak:Z

    if-eqz v0, :cond_2

    const-string v0, "completing "

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->az:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ay:Z

    if-eqz v0, :cond_3

    :cond_0
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aA:I

    :goto_2
    move p1, v0

    .line 1756
    :goto_3
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aj:Z

    if-eqz v0, :cond_a

    .line 1757
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->INVALID_STATE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 1853
    :goto_4
    return-object v0

    .line 1746
    :cond_1
    const-string v0, "ok "

    goto :goto_0

    :cond_2
    const-string v0, "new "

    goto :goto_1

    .line 1747
    :cond_3
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->A:I

    goto :goto_2

    .line 1748
    :cond_4
    if-ne p1, v5, :cond_7

    .line 1749
    const-string v1, "NexEditor.java"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capture request : captureTime=CAPTURE_CURRENT_NOFX "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aj:Z

    if-eqz v0, :cond_5

    const-string v0, "in-progress "

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ak:Z

    if-eqz v0, :cond_6

    const-string v0, "completing "

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    const-string v0, "ok "

    goto :goto_5

    :cond_6
    const-string v0, "new "

    goto :goto_6

    .line 1751
    :cond_7
    const-string v1, "NexEditor.java"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capture request : captureTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aj:Z

    if-eqz v0, :cond_8

    const-string v0, "in-progress "

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ak:Z

    if-eqz v0, :cond_9

    const-string v0, "completing "

    :goto_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    const-string v0, "ok "

    goto :goto_7

    :cond_9
    const-string v0, "new "

    goto :goto_8

    .line 1760
    :cond_a
    iput-boolean v4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aj:Z

    .line 1762
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ak:Z

    if-nez v0, :cond_c

    .line 1763
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->az:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ay:Z

    if-eqz v0, :cond_d

    :cond_b
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aA:I

    :goto_9
    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->al:I

    .line 1764
    :cond_c
    const-string v0, "NexEditor.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Capture mCaptureOriginalTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->al:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14;

    invoke-direct {v0, p0, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$14;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;)V

    .line 1820
    if-ne p1, v5, :cond_e

    .line 1821
    const-string v1, "NexEditor.java"

    const-string v2, "  Capture CAPTURE_CURRENT_NOFX fastPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;->nofx:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;

    invoke-direct {p0, v1, v4, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;IZ)V

    .line 1823
    const-string v1, "NexEditor.java"

    const-string v2, "  Capture CAPTURE_CURRENT_NOFX captureCurrentFrame"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    invoke-direct {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;)I

    .line 1825
    const-string v0, "NexEditor.java"

    const-string v1, "  Capture CAPTURE_CURRENT_NOFX out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    :goto_a
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    goto/16 :goto_4

    .line 1763
    :cond_d
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->A:I

    goto :goto_9

    .line 1827
    :cond_e
    new-instance v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$15;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$15;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;ILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;)V

    invoke-virtual {p0, p1, v3, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(IZLcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)V

    goto :goto_a
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;
    .locals 1

    .prologue
    .line 1608
    const v0, 0x7fff0001

    invoke-virtual {p0, v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(ILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;II)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;
    .locals 1

    .prologue
    .line 3489
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->getClipInfoSync(Ljava/lang/String;Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;II)I

    move-result v0

    .line 3493
    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->fromValue(I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;ZI)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;
    .locals 1

    .prologue
    .line 3481
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->getClipInfoSync(Ljava/lang/String;Lcom/nexstreaming/kminternal/nexvideoeditor/NexClipInfo;II)I

    move-result v0

    .line 3485
    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->fromValue(I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v0

    return-object v0

    .line 3481
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/io/File;I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;
    .locals 1

    .prologue
    .line 4062
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->getClipAudioThumb(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 4063
    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->fromValue(I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/io/File;IIIIIII)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4034
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->getClipVideoThumb(Ljava/lang/String;Ljava/lang/String;IIIIIII)I

    move-result v0

    .line 4035
    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->fromValue(I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/io/File;III[III)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4052
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->getClipVideoThumbWithTimeTable(Ljava/lang/String;Ljava/lang/String;III[III)I

    move-result v0

    .line 4053
    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->fromValue(I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IIIIIJIILjava/lang/String;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;
    .locals 2

    .prologue
    .line 1399
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->af:Z

    if-eqz v0, :cond_1

    .line 1400
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->TRANSCODING_BUSY:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 1406
    :cond_0
    :goto_0
    return-object v0

    .line 1402
    :cond_1
    invoke-direct/range {p0 .. p12}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->transcodingStart(Ljava/lang/String;Ljava/lang/String;IIIIIJIILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->fromValue(I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v0

    .line 1403
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1404
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->af:Z

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 173
    iput p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->N:I

    .line 174
    return-void
.end method

.method protected a(II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1058
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->u:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->n:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 1073
    :cond_0
    :goto_0
    return-void

    .line 1061
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->u:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1062
    if-ne v0, p2, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->u:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    .line 1067
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->n:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$n;

    .line 1068
    if-nez p1, :cond_2

    .line 1069
    invoke-virtual {v0, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$n;->a(I)V

    goto :goto_0

    .line 1071
    :cond_2
    invoke-static {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->fromValue(I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$n;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V

    goto :goto_0
.end method

.method protected a(IIII)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1008
    if-eq p4, v3, :cond_0

    const/4 v0, 0x4

    if-eq p4, v0, :cond_0

    if-nez p4, :cond_6

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->l:Ljava/util/Deque;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->l:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-ge v0, v3, :cond_3

    .line 1011
    :cond_1
    const-string v0, "NexEditor.java"

    const-string v1, "Ignore onAddClipDone event -- no listeners"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_2
    :goto_0
    return-void

    .line 1014
    :cond_3
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->l:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$d;

    .line 1015
    iget v2, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$d;->a:I

    if-ne v2, p3, :cond_4

    .line 1016
    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->l:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 1017
    if-nez p1, :cond_5

    .line 1018
    invoke-virtual {v0, p3, p2, p4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$d;->a(III)V

    goto :goto_0

    .line 1020
    :cond_5
    invoke-static {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->fromValue(I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$d;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V

    goto :goto_0

    .line 1026
    :cond_6
    const/4 v0, 0x3

    if-eq p4, v0, :cond_7

    if-nez p4, :cond_2

    .line 1028
    :cond_7
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->k:Ljava/util/Deque;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->k:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-ge v0, v3, :cond_9

    .line 1029
    :cond_8
    const-string v0, "NexEditor.java"

    const-string v1, "Ignore onAddClipDone event -- no listeners"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1032
    :cond_9
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->k:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$d;

    .line 1033
    iget v2, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$d;->a:I

    if-ne v2, p3, :cond_a

    .line 1034
    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->k:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 1035
    if-nez p1, :cond_b

    .line 1036
    invoke-virtual {v0, p3, p2, p4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$d;->a(III)V

    goto :goto_0

    .line 1038
    :cond_b
    invoke-static {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->fromValue(I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$d;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V

    goto :goto_0
.end method

.method protected a(IIIII[BIII)V
    .locals 10

    .prologue
    .line 880
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ab:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$k;

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ab:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$k;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$k;->a(IIIII[BIII)V

    .line 883
    :cond_0
    return-void
.end method

.method protected a(III[BZ)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 930
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->v:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 962
    :goto_0
    return-void

    .line 933
    :cond_0
    if-lt p1, v2, :cond_1

    if-lt p2, v2, :cond_1

    if-lt p3, v2, :cond_1

    if-nez p4, :cond_2

    .line 934
    :cond_1
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->CAPTURE_FAILED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V

    .line 938
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->v:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;

    .line 940
    if-ne p5, v2, :cond_3

    .line 942
    mul-int/lit8 v2, p1, 0x4

    new-array v2, v2, [B

    .line 943
    :goto_1
    div-int/lit8 v3, p2, 0x2

    if-ge v1, v3, :cond_3

    .line 944
    mul-int v3, p1, v1

    mul-int/lit8 v3, v3, 0x4

    const/4 v4, 0x0

    mul-int/lit8 v5, p1, 0x4

    invoke-static {p4, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 945
    add-int/lit8 v3, p2, -0x1

    sub-int/2addr v3, v1

    mul-int/2addr v3, p1

    mul-int/lit8 v3, v3, 0x4

    mul-int v4, p1, v1

    mul-int/lit8 v4, v4, 0x4

    mul-int/lit8 v5, p1, 0x4

    invoke-static {p4, v3, p4, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 946
    const/4 v3, 0x0

    add-int/lit8 v4, p2, -0x1

    sub-int/2addr v4, v1

    mul-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0x4

    mul-int/lit8 v5, p1, 0x4

    invoke-static {v2, v3, p4, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 943
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 950
    :cond_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 951
    invoke-static {p4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 953
    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 954
    :catch_0
    move-exception v0

    .line 956
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->printStackTrace()V

    goto :goto_0

    .line 958
    :catch_1
    move-exception v0

    .line 960
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(IILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2739
    iput p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->A:I

    .line 2740
    iput p2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->B:I

    .line 2741
    const-string v0, "NexEditor.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in onSetTimeDone("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2747
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 2748
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->o:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;

    .line 2749
    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;->b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)I

    move-result v3

    iget v4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aE:I

    if-ge v3, v4, :cond_0

    .line 2750
    invoke-interface {v1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2754
    :cond_1
    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;

    .line 2755
    const-string v3, "NexEditor.java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  - START notify listener : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    sget-object v3, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    if-ne p3, v3, :cond_2

    .line 2757
    invoke-virtual {v0, p1, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;->a(II)V

    .line 2761
    :goto_2
    const-string v3, "NexEditor.java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  - DONE notify listener : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2759
    :cond_2
    invoke-virtual {v0, p3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V

    goto :goto_2

    .line 2764
    :cond_3
    const-string v0, "NexEditor.java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(removing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " listeners)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->o:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/Deque;->removeAll(Ljava/util/Collection;)Z

    .line 2767
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->D()V

    .line 2770
    invoke-direct {p0, v6}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->f(Z)V

    .line 2771
    const-string v0, "NexEditor.java"

    const-string v1, "(seek state set to FALSE)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->t:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 2774
    const-string v0, "NexEditor.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetTimeDone [m_onSetTimeCancelListeners>0]: m_isPendingSeek="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->az:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    iput-boolean v6, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->az:Z

    .line 2776
    iput-boolean v6, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aC:Z

    .line 2777
    :goto_3
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->t:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 2778
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->t:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V

    goto :goto_3

    .line 2783
    :cond_4
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aC:Z

    if-eqz v0, :cond_6

    .line 2784
    const-string v0, "NexEditor.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute pending non-display seek : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    iput-boolean v6, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aC:Z

    .line 2786
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aD:I

    invoke-direct {p0, v0, v6, v6, v7}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(IZILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)V

    .line 2808
    :cond_5
    :goto_4
    const-string v0, "NexEditor.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "out onSetTimeDone("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->o:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    return-void

    .line 2788
    :cond_6
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->az:Z

    if-eqz v0, :cond_5

    .line 2789
    const-string v0, "NexEditor.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute pending seek : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aA:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_pendingSeekIDR="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aB:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    iput-boolean v6, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->az:Z

    .line 2791
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aB:I

    if-nez v0, :cond_7

    .line 2792
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aA:I

    invoke-virtual {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->j(I)V

    goto :goto_4

    .line 2794
    :cond_7
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aB:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 2796
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aA:I

    invoke-virtual {p0, v0, v7}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->d(ILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)V

    goto/16 :goto_4

    .line 2798
    :cond_8
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aB:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    .line 2800
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aA:I

    invoke-virtual {p0, v0, v7}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(ILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)V

    goto/16 :goto_4

    .line 2804
    :cond_9
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aA:I

    invoke-virtual {p0, v0, v7}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e(ILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)V

    goto/16 :goto_4
.end method

.method public a(ILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2071
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->an:Z

    if-eqz v0, :cond_1

    .line 2072
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->t:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;

    .line 2073
    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->PLAY_SUPERCEEDED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V

    goto :goto_0

    .line 2075
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->t:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 2077
    :cond_1
    iput-boolean v4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->an:Z

    .line 2078
    iput-boolean v4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ao:Z

    .line 2079
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aq:Lcom/nexstreaming/app/common/task/Task;

    if-nez v0, :cond_3

    .line 2080
    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->stopPlay(I)I

    .line 2081
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {p2, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V

    .line 2102
    :cond_2
    :goto_1
    return-void

    .line 2084
    :cond_3
    const-string v0, "NexEditor.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop flags("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->r:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 2090
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->p:Ljava/util/Deque;

    invoke-interface {v0, p2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 2091
    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->stopPlay(I)I

    move-result v0

    .line 2093
    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aq:Lcom/nexstreaming/app/common/task/Task;

    if-eqz v1, :cond_4

    .line 2094
    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aq:Lcom/nexstreaming/app/common/task/Task;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/nexstreaming/app/common/task/Task$Event;

    sget-object v3, Lcom/nexstreaming/app/common/task/Task$Event;->CANCEL:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/nexstreaming/app/common/task/Task;->signalEvent([Lcom/nexstreaming/app/common/task/Task$Event;)V

    .line 2095
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aq:Lcom/nexstreaming/app/common/task/Task;

    .line 2098
    :cond_4
    if-eqz v0, :cond_2

    .line 2099
    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->p:Ljava/util/Deque;

    invoke-interface {v1, p2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 2100
    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->fromValue(I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V

    goto :goto_1
.end method

.method public a(ILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)V
    .locals 1

    .prologue
    .line 2628
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$8;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;ILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)V

    invoke-direct {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;)V

    .line 2634
    return-void
.end method

.method public a(IZLcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)V
    .locals 1

    .prologue
    .line 2653
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(IZILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)V

    .line 2654
    return-void
.end method

.method public a(I[B)V
    .locals 0

    .prologue
    .line 4214
    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setVideoTrackUUID(I[B)I

    .line 4215
    return-void
.end method

.method protected a(I[I)V
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ac:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$l;

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ac:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$l;

    invoke-interface {v0, p1, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$l;->a(I[I)I

    .line 905
    :cond_0
    return-void
.end method

.method protected a(I[I[I)V
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ad:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$s;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ad:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$s;

    invoke-interface {v0, p1, p2, p3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$s;->a(I[I[I)I

    .line 922
    :cond_0
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 2

    .prologue
    .line 1365
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->L:Landroid/view/Surface;

    .line 1367
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aj:Z

    if-eqz v0, :cond_1

    .line 1368
    const-string v0, "NexEditor.java"

    const-string v1, "prepareSurface wait. image exporting..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    :cond_0
    :goto_0
    return-void

    .line 1372
    :cond_1
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ai:Z

    if-nez v0, :cond_0

    .line 1373
    sget-boolean v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->O:Z

    if-eqz v0, :cond_2

    .line 1374
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->prepareSurface(Landroid/view/Surface;)I

    .line 1376
    :cond_2
    if-eqz p1, :cond_3

    .line 1377
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aH:F

    invoke-direct {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setPreviewScaleFactor(F)I

    .line 1379
    :cond_3
    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->prepareSurface(Landroid/view/Surface;)I

    goto :goto_0
.end method

.method protected a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 768
    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    const-string v0, "NexEditor.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFastOptionPreviewDone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_0
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->I:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->I:I

    .line 772
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->J:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->I:I

    if-ge v0, v3, :cond_4

    .line 773
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ay:Z

    if-eqz v0, :cond_2

    .line 774
    const-string v0, "NexEditor.java"

    const-string v1, "onFastOptionPreviewDone: stat is seeking"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iput-object v4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->J:Ljava/lang/String;

    .line 792
    :cond_1
    :goto_0
    return-void

    .line 779
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->J:Ljava/lang/String;

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->K:I

    invoke-direct {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->fastOptionPreview(Ljava/lang/String;I)I

    move-result v0

    .line 780
    iput-object v4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->J:Ljava/lang/String;

    .line 781
    if-nez v0, :cond_3

    .line 782
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->I:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->I:I

    goto :goto_0

    .line 784
    :cond_3
    const-string v1, "NexEditor.java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFastOptionPreviewDone: pending result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 786
    :cond_4
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->I:I

    if-ge v0, v5, :cond_1

    .line 787
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aa:Lcom/nexstreaming/app/common/task/Task;

    if-eqz v0, :cond_1

    .line 788
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aa:Lcom/nexstreaming/app/common/task/Task;

    new-array v1, v3, [Lcom/nexstreaming/app/common/task/Task$Event;

    const/4 v2, 0x0

    sget-object v3, Lcom/nexstreaming/app/common/task/Task$Event;->SUCCESS:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v3, v1, v2

    sget-object v2, Lcom/nexstreaming/app/common/task/Task$Event;->COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/Task;->signalEvent([Lcom/nexstreaming/app/common/task/Task$Event;)V

    .line 789
    iput-object v4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aa:Lcom/nexstreaming/app/common/task/Task;

    goto :goto_0
.end method

.method protected a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;I)V
    .locals 3

    .prologue
    .line 756
    const-string v0, "NexEditor.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-  onTranscodingDone() result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTranscoding ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->af:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->af:Z

    if-nez v0, :cond_1

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->af:Z

    .line 761
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->Z:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$r;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->Z:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$r;

    invoke-interface {v0, p1, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$r;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;I)V

    goto :goto_0
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;I)V
    .locals 1

    .prologue
    .line 1451
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;IZ)V

    .line 1452
    return-void
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;IZ)V
    .locals 2

    .prologue
    .line 1555
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aj:Z

    if-eqz v0, :cond_0

    .line 1558
    :goto_0
    return-void

    .line 1557
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$FastPreviewOption;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->c(Ljava/lang/String;I)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$c;)V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->setCustomRenderCallback(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$c;)V

    .line 594
    :cond_0
    return-void
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;)V
    .locals 1

    .prologue
    .line 2067
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(ILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;)V

    .line 2068
    return-void
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$h;)V
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->Y:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$h;

    .line 735
    return-void
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$i;)V
    .locals 1

    .prologue
    .line 4218
    if-nez p1, :cond_0

    .line 4219
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->w:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 4223
    :goto_0
    return-void

    .line 4222
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->w:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$j;)V
    .locals 0

    .prologue
    .line 3548
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aG:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$j;

    .line 3549
    return-void
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$k;)V
    .locals 0

    .prologue
    .line 876
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ab:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$k;

    .line 877
    return-void
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$l;)V
    .locals 0

    .prologue
    .line 898
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ac:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$l;

    .line 899
    return-void
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$m;)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->X:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$m;

    .line 732
    return-void
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$q;)V
    .locals 0

    .prologue
    .line 3662
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->x:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$q;

    .line 3663
    return-void
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$s;)V
    .locals 0

    .prologue
    .line 915
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ad:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$s;

    .line 916
    return-void
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 601
    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;

    if-eq v1, p1, :cond_2

    .line 602
    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;

    if-eqz v1, :cond_0

    .line 603
    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;

    invoke-virtual {v1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->linkToEditor(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)V

    .line 605
    :cond_0
    if-eqz p1, :cond_1

    .line 606
    invoke-virtual {p1, p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->linkToEditor(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)V

    .line 608
    :cond_1
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;

    .line 609
    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    if-eqz v1, :cond_2

    .line 610
    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;

    if-nez v2, :cond_3

    :goto_0
    invoke-virtual {v1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->setContext(Landroid/content/Context;)V

    .line 613
    :cond_2
    return-void

    .line 610
    :cond_3
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/c;)V
    .locals 2

    .prologue
    .line 584
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/c;

    .line 585
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/c;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->setUIListener(Lcom/nexstreaming/kminternal/nexvideoeditor/c;)V

    .line 588
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 3113
    const/4 v0, 0x0

    .line 3115
    if-nez p3, :cond_0

    .line 3116
    const/4 v0, 0x1

    .line 3118
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->loadRenderItem(Ljava/lang/String;Ljava/lang/String;I)I

    .line 3119
    return-void
.end method

.method public a(Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->T:Ljava/lang/Thread;

    .line 185
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 3103
    const/4 v0, 0x0

    .line 3105
    if-nez p1, :cond_0

    .line 3106
    const/4 v0, 0x1

    .line 3108
    :cond_0
    invoke-direct {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->clearRenderItems(I)I

    .line 3109
    return-void
.end method

.method public a(F)Z
    .locals 1

    .prologue
    .line 4267
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 4268
    iput p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aH:F

    .line 4269
    const/4 v0, 0x1

    .line 4271
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    .line 1352
    invoke-virtual {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1353
    if-nez v0, :cond_1

    .line 1360
    :cond_0
    :goto_0
    return p2

    .line 1355
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1356
    const/4 p2, 0x1

    goto :goto_0

    .line 1357
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1358
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public a([BII)[I
    .locals 1

    .prologue
    .line 4249
    invoke-virtual {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->createLGLUT([B)[I

    move-result-object v0

    return-object v0
.end method

.method public native addUDTA(ILjava/lang/String;)I
.end method

.method public native asyncDrawInfoList([Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;[Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;)I
.end method

.method public b(I)I
    .locals 1

    .prologue
    .line 639
    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->resetFaceDetectInfo(I)I

    move-result v0

    return v0
.end method

.method public b(II)I
    .locals 1

    .prologue
    .line 1300
    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->getTexNameForClipID(II)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 1340
    invoke-virtual {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1341
    if-nez v0, :cond_0

    .line 1347
    :goto_0
    return p2

    .line 1345
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 1346
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b([Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;[Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;I)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 4096
    .line 4097
    if-eqz p1, :cond_1

    .line 4098
    array-length v3, p1

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, p1, v2

    .line 4099
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipID:I

    if-le v5, v0, :cond_0

    .line 4100
    iget v0, v4, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipID:I

    .line 4098
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 4104
    :cond_2
    if-eqz p2, :cond_4

    .line 4105
    array-length v2, p2

    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, p2, v1

    .line 4106
    if-eqz v3, :cond_3

    iget v4, v3, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipID:I

    if-le v4, v0, :cond_3

    .line 4107
    iget v0, v3, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipID:I

    .line 4105
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4111
    :cond_4
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a:I

    .line 4113
    invoke-direct {p0, p1, p2, p3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->asyncLoadList([Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;[Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;I)I

    move-result v0

    .line 4114
    return v0
.end method

.method protected b(III)V
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->Z:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$r;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->Z:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$r;

    invoke-interface {v0, p1, p2, p3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$r;->a(III)V

    .line 754
    :cond_0
    return-void
.end method

.method public b(ILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)V
    .locals 2

    .prologue
    .line 2637
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(IZILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)V

    .line 2638
    return-void
.end method

.method protected b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 797
    const-string v0, "NexEditor.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iput-boolean v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b:Z

    .line 800
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-ge v0, v3, :cond_1

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 803
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$o;

    .line 804
    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$o;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V

    .line 805
    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    if-ne p1, v1, :cond_0

    .line 806
    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->r:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;I)V
    .locals 4

    .prologue
    .line 853
    iput p2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->z:I

    .line 854
    const-string v0, "NexEditor.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REACHED MARKER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :goto_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->s:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;

    .line 857
    if-nez v0, :cond_0

    .line 858
    const-string v0, "NexEditor.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    - onCommandMarker("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): Skipping because listener is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :goto_1
    return-void

    .line 860
    :cond_0
    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;)I

    move-result v1

    if-le v1, p2, :cond_1

    .line 861
    const-string v1, "NexEditor.java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    - onCommandMarker("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): Skipping because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 865
    :cond_1
    const-string v1, "NexEditor.java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    - onCommandMarker("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): Notifying because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->s:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;

    .line 867
    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3093
    .line 3095
    if-nez p2, :cond_0

    .line 3096
    const/4 v0, 0x1

    .line 3098
    :goto_0
    const-string v2, ""

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->loadTheme(Ljava/lang/String;Ljava/lang/String;I)I

    .line 3099
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 4139
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    if-eqz v0, :cond_0

    .line 4140
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->setSyncMode(Z)V

    .line 4142
    :cond_0
    return-void
.end method

.method public b([BII)[I
    .locals 1

    .prologue
    .line 4254
    invoke-virtual {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->createCubeLUT([B)[I

    move-result-object v0

    return-object v0
.end method

.method public c(II)I
    .locals 1

    .prologue
    .line 1325
    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->releaseRenderItem(II)I

    move-result v0

    return v0
.end method

.method protected c(I)V
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ac:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$l;

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ac:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$l;

    invoke-interface {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$l;->a(I)I

    .line 910
    :cond_0
    return-void
.end method

.method public c(ILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)V
    .locals 2

    .prologue
    .line 2641
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(IZILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)V

    .line 2642
    return-void
.end method

.method protected c(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V
    .locals 3

    .prologue
    .line 820
    const-string v0, "NexEditor.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop : m_onStopListeners.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->p:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b:Z

    .line 824
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aq:Lcom/nexstreaming/app/common/task/Task;

    if-eqz v0, :cond_0

    .line 825
    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aq:Lcom/nexstreaming/app/common/task/Task;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/app/common/task/Task;->sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    .line 827
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aq:Lcom/nexstreaming/app/common/task/Task;

    .line 834
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->p:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;

    if-eqz v0, :cond_1

    .line 835
    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V

    goto :goto_0

    .line 837
    :cond_1
    return-void
.end method

.method public c(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;I)V
    .locals 3

    .prologue
    .line 3552
    const-string v0, "NexEditor.java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetClipInfoDone onGetClipInfoDone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3553
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aG:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$j;

    if-eqz v0, :cond_0

    .line 3554
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aG:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$j;

    invoke-interface {v0, p1, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$j;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;I)V

    .line 3556
    :cond_0
    return-void
.end method

.method public c([BII)[I
    .locals 14

    .prologue
    .line 4276
    mul-int v11, p2, p3

    .line 4278
    mul-int v1, p2, p3

    new-array v12, v1, [I

    .line 4279
    const/4 v1, 0x0

    const/4 v5, 0x0

    move v10, v1

    :goto_0
    move/from16 v0, p3

    if-ge v10, v0, :cond_7

    .line 4280
    shr-int/lit8 v1, v10, 0x1

    mul-int v1, v1, p2

    add-int v3, v11, v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 4281
    const/4 v1, 0x0

    move v8, v1

    move v9, v5

    move v1, v4

    :goto_1
    move/from16 v0, p2

    if-ge v8, v0, :cond_6

    .line 4282
    aget-byte v4, p1, v9

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, -0x10

    .line 4283
    if-gez v4, :cond_9

    const/4 v4, 0x0

    move v7, v4

    .line 4284
    :goto_2
    and-int/lit8 v4, v8, 0x1

    if-nez v4, :cond_8

    .line 4285
    add-int/lit8 v1, v3, 0x1

    aget-byte v2, p1, v3

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, -0x80

    .line 4286
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x80

    move v4, v1

    move v5, v2

    move v6, v3

    .line 4289
    :goto_3
    mul-int/lit16 v1, v7, 0x4a8

    .line 4290
    mul-int/lit16 v2, v4, 0x662

    add-int v3, v1, v2

    .line 4291
    mul-int/lit16 v2, v4, 0x341

    sub-int v2, v1, v2

    mul-int/lit16 v7, v5, 0x190

    sub-int/2addr v2, v7

    .line 4292
    mul-int/lit16 v7, v5, 0x812

    add-int/2addr v1, v7

    .line 4294
    if-gez v3, :cond_3

    const/4 v3, 0x0

    .line 4295
    :cond_0
    :goto_4
    if-gez v2, :cond_4

    const/4 v2, 0x0

    .line 4296
    :cond_1
    :goto_5
    if-gez v1, :cond_5

    const/4 v1, 0x0

    .line 4298
    :cond_2
    :goto_6
    const/high16 v7, -0x1000000

    shl-int/lit8 v3, v3, 0x6

    const/high16 v13, 0xff0000

    and-int/2addr v3, v13

    or-int/2addr v3, v7

    shr-int/lit8 v2, v2, 0x2

    const v7, 0xff00

    and-int/2addr v2, v7

    or-int/2addr v2, v3

    shr-int/lit8 v1, v1, 0xa

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    aput v1, v12, v9

    .line 4281
    add-int/lit8 v1, v8, 0x1

    add-int/lit8 v2, v9, 0x1

    move v8, v1

    move v3, v6

    move v9, v2

    move v1, v4

    move v2, v5

    goto :goto_1

    .line 4294
    :cond_3
    const v7, 0x3ffff

    if-le v3, v7, :cond_0

    const v3, 0x3ffff

    goto :goto_4

    .line 4295
    :cond_4
    const v7, 0x3ffff

    if-le v2, v7, :cond_1

    const v2, 0x3ffff

    goto :goto_5

    .line 4296
    :cond_5
    const v7, 0x3ffff

    if-le v1, v7, :cond_2

    const v1, 0x3ffff

    goto :goto_6

    .line 4279
    :cond_6
    add-int/lit8 v1, v10, 0x1

    move v5, v9

    move v10, v1

    goto/16 :goto_0

    .line 4302
    :cond_7
    return-object v12

    :cond_8
    move v4, v1

    move v5, v2

    move v6, v3

    goto :goto_3

    :cond_9
    move v7, v4

    goto :goto_2
.end method

.method public native checkDirectExport(I)I
.end method

.method public native checkIDREnd()I
.end method

.method public native checkIDRStart(Ljava/lang/String;)I
.end method

.method public native checkIDRTime(I)I
.end method

.method public native checkPFrameDirectExportSync(Ljava/lang/String;)I
.end method

.method public native clearProject()I
.end method

.method public native clearTrackCache()I
.end method

.method public native clearUDTA()I
.end method

.method public native closeProject()I
.end method

.method public native createCubeLUT([B)[I
.end method

.method public native createLGLUT([B)[I
.end method

.method public native createProject()I
.end method

.method public d()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->N:I

    return v0
.end method

.method public d(Z)I
    .locals 1

    .prologue
    .line 4230
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->getAudioSessionID()I

    move-result v0

    return v0
.end method

.method protected d(I)V
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ad:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$s;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ad:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$s;

    invoke-interface {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$s;->a(I)I

    .line 927
    :cond_0
    return-void
.end method

.method protected d(II)V
    .locals 1

    .prologue
    .line 2727
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {p0, p1, p2, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(IILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V

    .line 2728
    return-void
.end method

.method public d(ILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 2645
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(IZILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)V

    .line 2646
    return-void
.end method

.method protected d(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V
    .locals 4

    .prologue
    .line 840
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aq:Lcom/nexstreaming/app/common/task/Task;

    if-eqz v0, :cond_0

    .line 841
    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 842
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aq:Lcom/nexstreaming/app/common/task/Task;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/app/common/task/Task;->sendFailure(Lcom/nexstreaming/app/common/task/Task$TaskError;)V

    .line 846
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aq:Lcom/nexstreaming/app/common/task/Task;

    .line 848
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->E()V

    .line 850
    :cond_0
    return-void

    .line 844
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aq:Lcom/nexstreaming/app/common/task/Task;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/nexstreaming/app/common/task/Task$Event;

    const/4 v2, 0x0

    sget-object v3, Lcom/nexstreaming/app/common/task/Task$Event;->SUCCESS:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/nexstreaming/app/common/task/Task$Event;->COMPLETE:Lcom/nexstreaming/app/common/task/Task$Event;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nexstreaming/app/common/task/Task;->signalEvent([Lcom/nexstreaming/app/common/task/Task$Event;)V

    goto :goto_0
.end method

.method public native directExport(Ljava/lang/String;JJLjava/lang/String;I)I
.end method

.method public e()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->T:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 196
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->T:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->T:Ljava/lang/Thread;

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public e(ILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)V
    .locals 2

    .prologue
    .line 2649
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(IZILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)V

    .line 2650
    return-void
.end method

.method protected e(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V
    .locals 2

    .prologue
    .line 966
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->v:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 972
    :goto_0
    return-void

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->v:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;

    .line 971
    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$e;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V

    goto :goto_0
.end method

.method public e(Z)V
    .locals 1

    .prologue
    .line 4259
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    if-eqz v0, :cond_0

    .line 4260
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->setWatermark(Z)V

    .line 4262
    :cond_0
    return-void
.end method

.method protected e(I)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 986
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->w:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 987
    const/4 v0, 0x0

    .line 991
    :goto_0
    return v0

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->w:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$i;

    .line 990
    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$i;->a(I)V

    move v0, v1

    .line 991
    goto :goto_0
.end method

.method public e(II)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 4234
    invoke-direct {p0, p1, p2, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->set360VideoTrackPosition(III)I

    .line 4235
    return v0
.end method

.method public native encodePause()I
.end method

.method public native encodeResume()I
.end method

.method public f()I
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->E:I

    return v0
.end method

.method protected f(I)V
    .locals 2

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->m:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$g;

    .line 1049
    if-nez p1, :cond_0

    .line 1050
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$g;->a()V

    .line 1054
    :goto_0
    return-void

    .line 1052
    :cond_0
    invoke-static {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->fromValue(I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$g;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V

    goto :goto_0
.end method

.method protected f(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 976
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->w:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 977
    const/4 v0, 0x0

    .line 982
    :goto_0
    return v0

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->w:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$i;

    .line 980
    invoke-virtual {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$i;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V

    .line 981
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aq:Lcom/nexstreaming/app/common/task/Task;

    move v0, v1

    .line 982
    goto :goto_0
.end method

.method public native fastPreviewStart(IIII)I
.end method

.method public native fastPreviewStop()I
.end method

.method public native fastPreviewTime(I)I
.end method

.method public g()I
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->F:I

    return v0
.end method

.method public g(I)I
    .locals 1

    .prologue
    .line 1304
    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->getTexNameForMask(I)I

    move-result v0

    return v0
.end method

.method public native getBrightness()I
.end method

.method public native getContrast()I
.end method

.method public native getDuration()I
.end method

.method public native getProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native getSaturation()I
.end method

.method public native getSharpness()I
.end method

.method public native getVignette()I
.end method

.method public native getVignetteRange()I
.end method

.method public h()I
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->G:I

    return v0
.end method

.method public h(I)I
    .locals 1

    .prologue
    .line 1329
    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setRenderToMask(I)I

    move-result v0

    return v0
.end method

.method public i(I)I
    .locals 1

    .prologue
    .line 1332
    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setRenderToDefault(I)I

    move-result v0

    return v0
.end method

.method public i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 557
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->W:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-ne v0, p0, :cond_2

    .line 558
    const-string v0, "NexEditor.java"

    const-string v1, "destroy editor instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->m()V

    .line 560
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->destroyEditor()I

    .line 565
    :goto_0
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->S:I

    if-ltz v0, :cond_0

    .line 566
    const/4 v0, 0x1

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->S:I

    invoke-direct {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->closeInputFile(II)I

    .line 569
    :cond_0
    iput-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    .line 570
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;

    invoke-virtual {v0, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->linkToEditor(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)V

    .line 572
    iput-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;

    .line 574
    :cond_1
    return-void

    .line 562
    :cond_2
    const-string v0, "NexEditor.java"

    const-string/jumbo v1, "skip destroying editor instance (not latest instance)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public j()Lcom/nexstreaming/kminternal/nexvideoeditor/d;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->U:Lcom/nexstreaming/kminternal/nexvideoeditor/d;

    if-nez v0, :cond_0

    .line 579
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/d;

    invoke-direct {v0, p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/d;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->U:Lcom/nexstreaming/kminternal/nexvideoeditor/d;

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->U:Lcom/nexstreaming/kminternal/nexvideoeditor/d;

    return-object v0
.end method

.method public j(I)V
    .locals 1

    .prologue
    .line 2605
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->c(ILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$p;)V

    .line 2606
    return-void
.end method

.method public k()Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;

    return-object v0
.end method

.method protected k(I)V
    .locals 3

    .prologue
    .line 2731
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aq:Lcom/nexstreaming/app/common/task/Task;

    if-eqz v0, :cond_0

    .line 2732
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aq:Lcom/nexstreaming/app/common/task/Task;

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ar:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ar:I

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/app/common/task/Task;->setProgress(II)V

    .line 2734
    :cond_0
    iput p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->A:I

    .line 2735
    return-void
.end method

.method public l(I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;
    .locals 1

    .prologue
    .line 4067
    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->getClipStopThumb(I)I

    move-result v0

    .line 4068
    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->fromValue(I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v0

    return-object v0
.end method

.method protected l()V
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->X:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$m;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->X:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$m;

    invoke-interface {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$m;->a()V

    .line 740
    :cond_0
    return-void
.end method

.method public m(I)I
    .locals 1

    .prologue
    .line 4244
    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->releaseLUTTexture(I)I

    move-result v0

    return v0
.end method

.method protected m()V
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->Y:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$h;

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->Y:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$h;

    invoke-interface {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$h;->a()V

    .line 745
    :cond_0
    return-void
.end method

.method public n(I)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/16 v4, 0x140

    const/16 v3, 0xf0

    .line 4306
    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->getTimeThumbData(I)[B

    move-result-object v1

    .line 4307
    if-nez v1, :cond_1

    .line 4314
    :cond_0
    :goto_0
    return-object v0

    .line 4309
    :cond_1
    array-length v2, v1

    if-eqz v2, :cond_0

    .line 4313
    invoke-virtual {p0, v1, v4, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->c([BII)[I

    move-result-object v0

    .line 4314
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v3, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected n()V
    .locals 2

    .prologue
    .line 811
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ao:Z

    .line 812
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->r:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 817
    :goto_0
    return-void

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->r:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$o;

    .line 816
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$o;->a()V

    goto :goto_0
.end method

.method public o(I)I
    .locals 1

    .prologue
    .line 4317
    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->setThumbnailRoutine(I)I

    move-result v0

    return v0
.end method

.method protected o()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 996
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->w:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 997
    const/4 v0, 0x0

    .line 1002
    :goto_0
    return v0

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->w:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$i;

    .line 1000
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$i;->a()V

    .line 1001
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aq:Lcom/nexstreaming/app/common/task/Task;

    move v0, v1

    .line 1002
    goto :goto_0
.end method

.method public p()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;
    .locals 2

    .prologue
    .line 1409
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->af:Z

    if-nez v0, :cond_1

    .line 1410
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NO_ACTION:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    .line 1417
    :cond_0
    :goto_0
    return-object v0

    .line 1413
    :cond_1
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->transcodingStop()I

    move-result v0

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->fromValue(I)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    move-result-object v0

    .line 1414
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->isError()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public q()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$b;
    .locals 1

    .prologue
    .line 1483
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$12;

    invoke-direct {v0, p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$12;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)V

    return-object v0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 1604
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->clearScreen(I)I

    move-result v0

    return v0
.end method

.method public native reverseStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJIII)I
.end method

.method public native reverseStop()I
.end method

.method public s()V
    .locals 1

    .prologue
    .line 1858
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$16;

    invoke-direct {v0, p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$16;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)V

    invoke-virtual {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$f;)V

    .line 1863
    return-void
.end method

.method public native setBaseFilterRenderItem(Ljava/lang/String;)I
.end method

.method public native setBrightness(I)I
.end method

.method public native setContrast(I)I
.end method

.method public native setDeviceGamma(F)I
.end method

.method public native setDeviceLightLevel(I)I
.end method

.method public native setProjectEffect(Ljava/lang/String;)I
.end method

.method public native setProjectManualVolumeControl(I)I
.end method

.method public native setProjectVolume(I)I
.end method

.method public native setProjectVolumeFade(II)I
.end method

.method public native setProperty(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native setSaturation(I)I
.end method

.method public native setSharpness(I)V
.end method

.method public native setTaskSleep(I)I
.end method

.method public native setVignette(I)V
.end method

.method public native setVignetteRange(I)V
.end method

.method public native setVolumeWhilePlay(II)I
.end method

.method public t()V
    .locals 2

    .prologue
    .line 1874
    const/4 v0, 0x0

    new-instance v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$2;

    invoke-direct {v1, p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$2;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)V

    invoke-direct {p0, v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(ILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$o;)V

    .line 1883
    return-void
.end method

.method public u()V
    .locals 2

    .prologue
    .line 2294
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->aj:Z

    if-eqz v0, :cond_0

    .line 2295
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->av:Z

    if-nez v0, :cond_0

    .line 2296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->av:Z

    .line 2297
    const-string v0, "NexEditor.java"

    const-string v1, "  exportImageFormatCancel..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    :cond_0
    return-void
.end method

.method public native updateDrawInfo(Lcom/nexstreaming/kminternal/nexvideoeditor/NexDrawInfo;)I
.end method

.method protected v()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2813
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->SET_TIME_IGNORED:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {p0, v1, v1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(IILcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V

    .line 2814
    return-void
.end method

.method public w()V
    .locals 1

    .prologue
    .line 3666
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->x:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$q;

    if-eqz v0, :cond_0

    .line 3667
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->x:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$q;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$q;->a()V

    .line 3669
    :cond_0
    return-void
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 4123
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->ay:Z

    return v0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 4145
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->getNativeSDKInfoWM()I

    move-result v0

    return v0
.end method

.method public z()I
    .locals 1

    .prologue
    .line 4164
    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->highlightStop()I

    move-result v0

    return v0
.end method
