.class public Lcom/facebook/cache/disk/DiskCacheConfig$b;
.super Ljava/lang/Object;
.source "DiskCacheConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/DiskCacheConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:J

.field private f:J

.field private g:Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;

.field private h:Lcom/facebook/cache/common/CacheErrorLogger;

.field private i:Lcom/facebook/cache/common/CacheEventListener;

.field private j:Lcom/facebook/common/f/DiskTrimmableRegistry;

.field private k:Z

.field private final l:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$b;->a:I

    const-string v0, "image_cache"

    .line 4
    iput-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$b;->b:Ljava/lang/String;

    const-wide/32 v0, 0x2800000

    .line 5
    iput-wide v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$b;->d:J

    const-wide/32 v0, 0xa00000

    .line 6
    iput-wide v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$b;->e:J

    const-wide/32 v0, 0x200000

    .line 7
    iput-wide v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$b;->f:J

    .line 8
    new-instance v0, Lcom/facebook/cache/disk/DefaultEntryEvictionComparatorSupplier;

    invoke-direct {v0}, Lcom/facebook/cache/disk/DefaultEntryEvictionComparatorSupplier;-><init>()V

    iput-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$b;->g:Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;

    .line 9
    iput-object p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$b;->l:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/facebook/cache/disk/DiskCacheConfig$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DiskCacheConfig$b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/cache/disk/DiskCacheConfig$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$b;->a:I

    return p0
.end method

.method static synthetic b(Lcom/facebook/cache/disk/DiskCacheConfig$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/cache/disk/DiskCacheConfig$b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$b;->l:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/cache/disk/DiskCacheConfig$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$b;->k:Z

    return p0
.end method

.method static synthetic e(Lcom/facebook/cache/disk/DiskCacheConfig$b;)Lcom/facebook/common/internal/Supplier;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$b;->c:Lcom/facebook/common/internal/Supplier;

    return-object p0
.end method

.method static synthetic f(Lcom/facebook/cache/disk/DiskCacheConfig$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$b;->d:J

    return-wide v0
.end method

.method static synthetic g(Lcom/facebook/cache/disk/DiskCacheConfig$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$b;->e:J

    return-wide v0
.end method

.method static synthetic h(Lcom/facebook/cache/disk/DiskCacheConfig$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$b;->f:J

    return-wide v0
.end method

.method static synthetic i(Lcom/facebook/cache/disk/DiskCacheConfig$b;)Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$b;->g:Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;

    return-object p0
.end method

.method static synthetic j(Lcom/facebook/cache/disk/DiskCacheConfig$b;)Lcom/facebook/cache/common/CacheErrorLogger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$b;->h:Lcom/facebook/cache/common/CacheErrorLogger;

    return-object p0
.end method

.method static synthetic k(Lcom/facebook/cache/disk/DiskCacheConfig$b;)Lcom/facebook/cache/common/CacheEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$b;->i:Lcom/facebook/cache/common/CacheEventListener;

    return-object p0
.end method

.method static synthetic l(Lcom/facebook/cache/disk/DiskCacheConfig$b;)Lcom/facebook/common/f/DiskTrimmableRegistry;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$b;->j:Lcom/facebook/common/f/DiskTrimmableRegistry;

    return-object p0
.end method


# virtual methods
.method public a(J)Lcom/facebook/cache/disk/DiskCacheConfig$b;
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$b;->d:J

    return-object p0
.end method

.method public a(Lcom/facebook/cache/common/CacheEventListener;)Lcom/facebook/cache/disk/DiskCacheConfig$b;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$b;->i:Lcom/facebook/cache/common/CacheEventListener;

    return-object p0
.end method

.method public a(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/cache/disk/DiskCacheConfig$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/facebook/cache/disk/DiskCacheConfig$b;"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$b;->c:Lcom/facebook/common/internal/Supplier;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/cache/disk/DiskCacheConfig$b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/facebook/cache/disk/DiskCacheConfig;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$b;->c:Lcom/facebook/common/internal/Supplier;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$b;->l:Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Either a non-null context or a base directory path or supplier must be provided."

    invoke-static {v0, v1}, Lcom/facebook/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$b;->c:Lcom/facebook/common/internal/Supplier;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$b;->l:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Lcom/facebook/cache/disk/DiskCacheConfig$b$a;

    invoke-direct {v0, p0}, Lcom/facebook/cache/disk/DiskCacheConfig$b$a;-><init>(Lcom/facebook/cache/disk/DiskCacheConfig$b;)V

    iput-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$b;->c:Lcom/facebook/common/internal/Supplier;

    .line 9
    :cond_2
    new-instance v0, Lcom/facebook/cache/disk/DiskCacheConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/cache/disk/DiskCacheConfig;-><init>(Lcom/facebook/cache/disk/DiskCacheConfig$b;Lcom/facebook/cache/disk/DiskCacheConfig$a;)V

    return-object v0
.end method
