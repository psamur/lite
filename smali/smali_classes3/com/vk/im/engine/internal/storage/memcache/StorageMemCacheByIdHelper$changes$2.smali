.class final Lcom/vk/im/engine/internal/storage/memcache/StorageMemCacheByIdHelper$changes$2;
.super Lkotlin/jvm/internal/Lambda;
.source "StorageMemCacheByIdHelper.kt"

# interfaces
.implements Lkotlin/jvm/b/Functions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/im/engine/internal/storage/memcache/StorageMemCacheByIdHelper;-><init>(ILcom/vk/im/engine/internal/storage/StorageTrigger;Lkotlin/jvm/b/Functions2;Lkotlin/jvm/b/Functions2;Lkotlin/jvm/b/Functions2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/Functions<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/vk/im/engine/internal/storage/memcache/StorageMemCacheByIdHelper$changes$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/im/engine/internal/storage/memcache/StorageMemCacheByIdHelper$changes$2;

    invoke-direct {v0}, Lcom/vk/im/engine/internal/storage/memcache/StorageMemCacheByIdHelper$changes$2;-><init>()V

    sput-object v0, Lcom/vk/im/engine/internal/storage/memcache/StorageMemCacheByIdHelper$changes$2;->a:Lcom/vk/im/engine/internal/storage/memcache/StorageMemCacheByIdHelper$changes$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/vk/im/engine/internal/storage/memcache/StorageMemCacheByIdHelper$changes$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
