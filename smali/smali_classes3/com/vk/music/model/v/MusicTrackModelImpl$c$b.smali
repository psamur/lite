.class Lcom/vk/music/model/v/MusicTrackModelImpl$c$b;
.super Ljava/lang/Object;
.source "MusicTrackModelImpl.java"

# interfaces
.implements Lcom/vk/music/common/ObservableModel$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/music/model/v/MusicTrackModelImpl$c;->a(Lcom/vk/api/sdk/exceptions/VKApiExecutionException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vk/music/common/ObservableModel$b<",
        "Lcom/vk/music/common/MusicTrackModel$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vk/api/sdk/exceptions/VKApiExecutionException;

.field final synthetic b:Lcom/vk/music/model/v/MusicTrackModelImpl$c;


# direct methods
.method constructor <init>(Lcom/vk/music/model/v/MusicTrackModelImpl$c;Lcom/vk/api/sdk/exceptions/VKApiExecutionException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vk/music/model/v/MusicTrackModelImpl$c$b;->b:Lcom/vk/music/model/v/MusicTrackModelImpl$c;

    iput-object p2, p0, Lcom/vk/music/model/v/MusicTrackModelImpl$c$b;->a:Lcom/vk/api/sdk/exceptions/VKApiExecutionException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vk/music/common/MusicTrackModel$b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/vk/music/model/v/MusicTrackModelImpl$c$b;->b:Lcom/vk/music/model/v/MusicTrackModelImpl$c;

    iget-object v0, v0, Lcom/vk/music/model/v/MusicTrackModelImpl$c;->c:Lcom/vk/music/model/v/MusicTrackModelImpl;

    iget-object v1, p0, Lcom/vk/music/model/v/MusicTrackModelImpl$c$b;->a:Lcom/vk/api/sdk/exceptions/VKApiExecutionException;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v0, v2, v1, v3}, Lcom/vk/music/common/MusicTrackModel$b;->a(Lcom/vk/music/common/MusicTrackModel;Lcom/vk/dto/music/Playlist;Lcom/vk/api/sdk/exceptions/VKApiExecutionException;Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/vk/music/common/MusicTrackModel$b;

    invoke-virtual {p0, p1}, Lcom/vk/music/model/v/MusicTrackModelImpl$c$b;->a(Lcom/vk/music/common/MusicTrackModel$b;)V

    return-void
.end method
