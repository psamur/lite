.class public Lme/grishka/appkit/preloading/ListPreloader;
.super Ljava/lang/Object;
.source "ListPreloader.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final a:I

.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Lme/grishka/appkit/preloading/PrefetchInfoProvider;

.field private d:I

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lme/grishka/appkit/preloading/ListPreloader;->g:Z

    .line 3
    iput p1, p0, Lme/grishka/appkit/preloading/ListPreloader;->a:I

    .line 4
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lme/grishka/appkit/preloading/ListPreloader;->b:Ljava/util/Queue;

    return-void
.end method

.method private a()V
    .locals 1

    .line 12
    :cond_0
    :goto_0
    iget-object v0, p0, Lme/grishka/appkit/preloading/ListPreloader;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lme/grishka/appkit/preloading/ListPreloader;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/datasource/DataSource;

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0}, Lcom/facebook/datasource/DataSource;->close()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(IZ)V
    .locals 1

    .line 5
    iget-boolean v0, p0, Lme/grishka/appkit/preloading/ListPreloader;->g:Z

    if-eq v0, p2, :cond_0

    .line 6
    iput-boolean p2, p0, Lme/grishka/appkit/preloading/ListPreloader;->g:Z

    .line 7
    invoke-direct {p0}, Lme/grishka/appkit/preloading/ListPreloader;->a()V

    :cond_0
    if-eqz p2, :cond_1

    .line 8
    iget p2, p0, Lme/grishka/appkit/preloading/ListPreloader;->a:I

    goto :goto_0

    :cond_1
    iget p2, p0, Lme/grishka/appkit/preloading/ListPreloader;->a:I

    neg-int p2, p2

    :goto_0
    add-int/2addr p2, p1

    invoke-direct {p0, p1, p2}, Lme/grishka/appkit/preloading/ListPreloader;->b(II)V

    return-void
.end method

.method private a(Lcom/facebook/datasource/DataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lme/grishka/appkit/preloading/ListPreloader;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget v1, p0, Lme/grishka/appkit/preloading/ListPreloader;->a:I

    if-le v0, v1, :cond_0

    .line 16
    iget-object v0, p0, Lme/grishka/appkit/preloading/ListPreloader;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/datasource/DataSource;

    if-eqz v0, :cond_0

    .line 17
    invoke-interface {v0}, Lcom/facebook/datasource/DataSource;->close()Z

    .line 18
    :cond_0
    iget-object v0, p0, Lme/grishka/appkit/preloading/ListPreloader;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->b(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 10
    sget-object v0, Lcom/vk/imageloader/view/VKImageView;->Q:Lcom/facebook/imagepipeline/common/RotationOptions;

    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Lcom/facebook/imagepipeline/common/RotationOptions;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 11
    sget-object v0, Lcom/vk/imageloader/FrescoWrapper;->c:Lcom/vk/imageloader/FrescoWrapper;

    invoke-virtual {v0}, Lcom/vk/imageloader/FrescoWrapper;->b()Lcom/facebook/x/d/ImagePipeline;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/facebook/x/d/ImagePipeline;->b(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    invoke-direct {p0, p1}, Lme/grishka/appkit/preloading/ListPreloader;->a(Lcom/facebook/datasource/DataSource;)V

    return-void
.end method

.method private b(II)V
    .locals 4

    if-ge p1, p2, :cond_0

    .line 1
    iget v0, p0, Lme/grishka/appkit/preloading/ListPreloader;->d:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    move v0, p2

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lme/grishka/appkit/preloading/ListPreloader;->e:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, p2

    .line 3
    :goto_0
    iget-object v2, p0, Lme/grishka/appkit/preloading/ListPreloader;->c:Lme/grishka/appkit/preloading/PrefetchInfoProvider;

    invoke-interface {v2}, Lme/grishka/appkit/preloading/PrefetchInfoProvider;->getItemCount()I

    move-result v2

    .line 4
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, 0x0

    .line 5
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge p1, p2, :cond_1

    move p1, v1

    :goto_1
    if-ge p1, v0, :cond_2

    const/4 p2, 0x1

    .line 6
    invoke-direct {p0, p1, p2}, Lme/grishka/appkit/preloading/ListPreloader;->b(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, v0, -0x1

    :goto_2
    if-lt p1, v1, :cond_2

    .line 7
    invoke-direct {p0, p1, v3}, Lme/grishka/appkit/preloading/ListPreloader;->b(IZ)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 8
    :cond_2
    iput v1, p0, Lme/grishka/appkit/preloading/ListPreloader;->e:I

    .line 9
    iput v0, p0, Lme/grishka/appkit/preloading/ListPreloader;->d:I

    return-void
.end method

.method private b(IZ)V
    .locals 2

    .line 10
    iget-object v0, p0, Lme/grishka/appkit/preloading/ListPreloader;->c:Lme/grishka/appkit/preloading/PrefetchInfoProvider;

    invoke-interface {v0, p1}, Lme/grishka/appkit/preloading/PrefetchInfoProvider;->u(I)I

    move-result v0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v0, :cond_1

    .line 11
    iget-object v1, p0, Lme/grishka/appkit/preloading/ListPreloader;->c:Lme/grishka/appkit/preloading/PrefetchInfoProvider;

    invoke-interface {v1, p1, p2}, Lme/grishka/appkit/preloading/PrefetchInfoProvider;->c(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lme/grishka/appkit/preloading/ListPreloader;->a(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 12
    iget-object p2, p0, Lme/grishka/appkit/preloading/ListPreloader;->c:Lme/grishka/appkit/preloading/PrefetchInfoProvider;

    invoke-interface {p2, p1, v0}, Lme/grishka/appkit/preloading/PrefetchInfoProvider;->c(II)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lme/grishka/appkit/preloading/ListPreloader;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 2
    iget-object v0, p0, Lme/grishka/appkit/preloading/ListPreloader;->c:Lme/grishka/appkit/preloading/PrefetchInfoProvider;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lme/grishka/appkit/preloading/ListPreloader;->a()V

    add-int/2addr p1, p2

    const/4 p2, 0x1

    .line 4
    invoke-direct {p0, p1, p2}, Lme/grishka/appkit/preloading/ListPreloader;->a(IZ)V

    :cond_0
    return-void
.end method

.method public a(Lme/grishka/appkit/preloading/PrefetchInfoProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lme/grishka/appkit/preloading/ListPreloader;->c:Lme/grishka/appkit/preloading/PrefetchInfoProvider;

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lme/grishka/appkit/preloading/ListPreloader;->c:Lme/grishka/appkit/preloading/PrefetchInfoProvider;

    if-eqz p1, :cond_2

    .line 2
    iget p1, p0, Lme/grishka/appkit/preloading/ListPreloader;->f:I

    if-le p2, p1, :cond_0

    add-int/2addr p3, p2

    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p3, p1}, Lme/grishka/appkit/preloading/ListPreloader;->a(IZ)V

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_1

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p2, p1}, Lme/grishka/appkit/preloading/ListPreloader;->a(IZ)V

    .line 5
    :cond_1
    :goto_0
    iput p2, p0, Lme/grishka/appkit/preloading/ListPreloader;->f:I

    :cond_2
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
