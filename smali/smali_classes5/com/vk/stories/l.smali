.class public final synthetic Lcom/vk/stories/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/stories/l;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/vk/stories/l;->a:Ljava/util/List;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/vk/stories/StoriesController;->b(Ljava/util/List;Ljava/lang/Boolean;)V

    return-void
.end method
