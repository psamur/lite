.class Lcom/vk/stories/ParentStoriesLoader$a;
.super Ljava/lang/Object;
.source "ParentStoriesLoader.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/stories/ParentStoriesLoader;->a(Ljava/util/ArrayList;Lcom/vk/stories/ParentStoriesLoader$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/vk/stories/ParentStoriesLoader$c;

.field final synthetic d:Lcom/vk/stories/ParentStoriesLoader;


# direct methods
.method constructor <init>(Lcom/vk/stories/ParentStoriesLoader;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/vk/stories/ParentStoriesLoader$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vk/stories/ParentStoriesLoader$a;->d:Lcom/vk/stories/ParentStoriesLoader;

    iput-object p2, p0, Lcom/vk/stories/ParentStoriesLoader$a;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vk/stories/ParentStoriesLoader$a;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/vk/stories/ParentStoriesLoader$a;->c:Lcom/vk/stories/ParentStoriesLoader$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/vk/dto/stories/model/GetStoriesAndOwnersResponse;

    .line 2
    iget-object v0, p0, Lcom/vk/stories/ParentStoriesLoader$a;->d:Lcom/vk/stories/ParentStoriesLoader;

    iget-object v1, p0, Lcom/vk/stories/ParentStoriesLoader$a;->a:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/vk/dto/stories/model/GetStoriesAndOwnersResponse;->b:Landroid/util/SparseArray;

    iget-object v3, p1, Lcom/vk/dto/stories/model/GetStoriesAndOwnersResponse;->c:Landroid/util/SparseArray;

    .line 3
    invoke-static {v0, v1, v2, v3}, Lcom/vk/stories/ParentStoriesLoader;->a(Lcom/vk/stories/ParentStoriesLoader;Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4
    iget-object p1, p1, Lcom/vk/dto/stories/model/GetStoriesAndOwnersResponse;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object p1, p0, Lcom/vk/stories/ParentStoriesLoader$a;->d:Lcom/vk/stories/ParentStoriesLoader;

    iget-object v1, p0, Lcom/vk/stories/ParentStoriesLoader$a;->b:Ljava/util/ArrayList;

    invoke-static {p1, v1, v0}, Lcom/vk/stories/ParentStoriesLoader;->a(Lcom/vk/stories/ParentStoriesLoader;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 6
    iget-object p1, p0, Lcom/vk/stories/ParentStoriesLoader$a;->c:Lcom/vk/stories/ParentStoriesLoader$c;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 7
    invoke-interface {p1, v0}, Lcom/vk/stories/ParentStoriesLoader$c;->a(Z)V

    :cond_0
    return-void
.end method
