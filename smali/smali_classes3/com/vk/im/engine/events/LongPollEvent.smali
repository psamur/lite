.class public final Lcom/vk/im/engine/events/LongPollEvent;
.super Lcom/vk/im/engine/events/Event;
.source "LongPollEvent.kt"


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vk/im/engine/models/x/LpEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vk/im/engine/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/im/engine/models/x/LpEvent;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/im/engine/events/Event;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/vk/im/engine/events/Event;-><init>()V

    iput-object p1, p0, Lcom/vk/im/engine/events/LongPollEvent;->c:Ljava/util/List;

    iput-object p2, p0, Lcom/vk/im/engine/events/LongPollEvent;->d:Ljava/util/List;

    iput-boolean p3, p0, Lcom/vk/im/engine/events/LongPollEvent;->e:Z

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/vk/im/engine/events/LongPollEvent;->e:Z

    return v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vk/im/engine/events/Event;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vk/im/engine/events/LongPollEvent;->d:Ljava/util/List;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vk/im/engine/models/x/LpEvent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vk/im/engine/events/LongPollEvent;->c:Ljava/util/List;

    return-object v0
.end method
