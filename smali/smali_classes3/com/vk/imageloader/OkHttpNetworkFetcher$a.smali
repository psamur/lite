.class Lcom/vk/imageloader/OkHttpNetworkFetcher$a;
.super Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;
.source "OkHttpNetworkFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/imageloader/OkHttpNetworkFetcher;->a(Lcom/vk/imageloader/OkHttpNetworkFetcher$d;Lcom/facebook/imagepipeline/producers/NetworkFetcher$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/Call;

.field final synthetic b:Lokhttp3/OkHttpClient;

.field final synthetic c:Lcom/vk/imageloader/OkHttpNetworkFetcher;


# direct methods
.method constructor <init>(Lcom/vk/imageloader/OkHttpNetworkFetcher;Lokhttp3/Call;Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vk/imageloader/OkHttpNetworkFetcher$a;->c:Lcom/vk/imageloader/OkHttpNetworkFetcher;

    iput-object p2, p0, Lcom/vk/imageloader/OkHttpNetworkFetcher$a;->a:Lokhttp3/Call;

    iput-object p3, p0, Lcom/vk/imageloader/OkHttpNetworkFetcher$a;->b:Lokhttp3/OkHttpClient;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/vk/imageloader/OkHttpNetworkFetcher$a;->a:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/vk/imageloader/OkHttpNetworkFetcher$a;->c:Lcom/vk/imageloader/OkHttpNetworkFetcher;

    invoke-static {v0}, Lcom/vk/imageloader/OkHttpNetworkFetcher;->a(Lcom/vk/imageloader/OkHttpNetworkFetcher;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/vk/imageloader/OkHttpNetworkFetcher$a;->c:Lcom/vk/imageloader/OkHttpNetworkFetcher;

    iget-object v1, p0, Lcom/vk/imageloader/OkHttpNetworkFetcher$a;->b:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->i()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Dispatcher;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vk/imageloader/OkHttpNetworkFetcher;->a(Lcom/vk/imageloader/OkHttpNetworkFetcher;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/vk/imageloader/OkHttpNetworkFetcher$a;->c:Lcom/vk/imageloader/OkHttpNetworkFetcher;

    invoke-static {v0}, Lcom/vk/imageloader/OkHttpNetworkFetcher;->a(Lcom/vk/imageloader/OkHttpNetworkFetcher;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/vk/imageloader/OkHttpNetworkFetcher$a$a;

    invoke-direct {v1, p0}, Lcom/vk/imageloader/OkHttpNetworkFetcher$a$a;-><init>(Lcom/vk/imageloader/OkHttpNetworkFetcher$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
