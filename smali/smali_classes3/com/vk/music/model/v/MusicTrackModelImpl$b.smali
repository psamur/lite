.class Lcom/vk/music/model/v/MusicTrackModelImpl$b;
.super Ljava/lang/Object;
.source "MusicTrackModelImpl.java"

# interfaces
.implements Lcom/vk/api/base/ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/music/model/v/MusicTrackModelImpl;->a(Lcom/vk/dto/music/MusicTrack;Lcom/vk/music/stats/MusicStatsRefer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vk/api/base/ApiCallback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vk/dto/music/MusicTrack;

.field final synthetic b:Lcom/vk/music/model/v/MusicTrackModelImpl;


# direct methods
.method constructor <init>(Lcom/vk/music/model/v/MusicTrackModelImpl;Lcom/vk/dto/music/MusicTrack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vk/music/model/v/MusicTrackModelImpl$b;->b:Lcom/vk/music/model/v/MusicTrackModelImpl;

    iput-object p2, p0, Lcom/vk/music/model/v/MusicTrackModelImpl$b;->a:Lcom/vk/dto/music/MusicTrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vk/api/sdk/exceptions/VKApiExecutionException;)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/vk/music/model/v/MusicTrackModelImpl$b;->b:Lcom/vk/music/model/v/MusicTrackModelImpl;

    invoke-static {v0}, Lcom/vk/music/model/v/MusicTrackModelImpl;->a(Lcom/vk/music/model/v/MusicTrackModelImpl;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/music/model/v/MusicTrackModelImpl$b;->a:Lcom/vk/dto/music/MusicTrack;

    invoke-static {v1}, Lcom/vk/music/model/v/MusicTrackModelImpl;->h(Lcom/vk/dto/music/MusicTrack;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    invoke-static {p1, v0}, Lcom/vk/music/logger/MusicLogger;->a(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/vk/music/model/v/MusicTrackModelImpl$b;->b:Lcom/vk/music/model/v/MusicTrackModelImpl;

    new-instance v1, Lcom/vk/music/model/v/MusicTrackModelImpl$b$b;

    invoke-direct {v1, p0, p1}, Lcom/vk/music/model/v/MusicTrackModelImpl$b$b;-><init>(Lcom/vk/music/model/v/MusicTrackModelImpl$b;Lcom/vk/api/sdk/exceptions/VKApiExecutionException;)V

    invoke-static {v0, v1}, Lcom/vk/music/model/v/MusicTrackModelImpl;->d(Lcom/vk/music/model/v/MusicTrackModelImpl;Lcom/vk/music/common/ObservableModel$b;)V

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Lcom/vk/music/model/v/MusicTrackModelImpl$b;->a:Lcom/vk/dto/music/MusicTrack;

    iget-boolean v1, v1, Lcom/vk/dto/music/MusicTrack;->F:Z

    if-eqz v1, :cond_0

    const-class v1, Lcom/vk/api/audio/AudioRestore;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/vk/api/audio/AudioAdd;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " request success with result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/vk/music/logger/MusicLogger;->d([Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/vk/music/model/v/MusicTrackModelImpl$b;->b:Lcom/vk/music/model/v/MusicTrackModelImpl;

    invoke-static {v0}, Lcom/vk/music/model/v/MusicTrackModelImpl;->a(Lcom/vk/music/model/v/MusicTrackModelImpl;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/music/model/v/MusicTrackModelImpl$b;->a:Lcom/vk/dto/music/MusicTrack;

    invoke-static {v1}, Lcom/vk/music/model/v/MusicTrackModelImpl;->h(Lcom/vk/dto/music/MusicTrack;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/vk/music/model/v/MusicTrackModelImpl$b;->a:Lcom/vk/dto/music/MusicTrack;

    invoke-virtual {v0}, Lcom/vk/dto/music/MusicTrack;->t1()Lcom/vk/dto/music/MusicTrack;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/vk/music/model/v/MusicTrackModelImpl$b;->a:Lcom/vk/dto/music/MusicTrack;

    iput-boolean v2, v1, Lcom/vk/dto/music/MusicTrack;->F:Z

    .line 6
    iget-object v2, p0, Lcom/vk/music/model/v/MusicTrackModelImpl$b;->b:Lcom/vk/music/model/v/MusicTrackModelImpl;

    invoke-static {v2}, Lcom/vk/music/model/v/MusicTrackModelImpl;->b(Lcom/vk/music/model/v/MusicTrackModelImpl;)Lcom/vk/music/player/PlayerModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/vk/music/player/PlayerModel;->S()Lcom/vk/dto/music/MusicTrack;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/dto/music/MusicTrack;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/vk/music/model/v/MusicTrackModelImpl$b;->b:Lcom/vk/music/model/v/MusicTrackModelImpl;

    invoke-static {v1}, Lcom/vk/music/model/v/MusicTrackModelImpl;->b(Lcom/vk/music/model/v/MusicTrackModelImpl;)Lcom/vk/music/player/PlayerModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/vk/music/player/PlayerModel;->S()Lcom/vk/dto/music/MusicTrack;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/music/model/v/MusicTrackModelImpl$b;->b:Lcom/vk/music/model/v/MusicTrackModelImpl;

    invoke-static {v2}, Lcom/vk/music/model/v/MusicTrackModelImpl;->c(Lcom/vk/music/model/v/MusicTrackModelImpl;)Lcom/vk/bridges/AuthBridge3;

    move-result-object v2

    invoke-interface {v2}, Lcom/vk/bridges/AuthBridge3;->b()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/vk/dto/music/MusicTrack;->a(II)V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/vk/music/model/v/MusicTrackModelImpl$b;->a:Lcom/vk/dto/music/MusicTrack;

    iget-object v2, p0, Lcom/vk/music/model/v/MusicTrackModelImpl$b;->b:Lcom/vk/music/model/v/MusicTrackModelImpl;

    invoke-static {v2}, Lcom/vk/music/model/v/MusicTrackModelImpl;->c(Lcom/vk/music/model/v/MusicTrackModelImpl;)Lcom/vk/bridges/AuthBridge3;

    move-result-object v2

    invoke-interface {v2}, Lcom/vk/bridges/AuthBridge3;->b()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Lcom/vk/dto/music/MusicTrack;->a(II)V

    .line 9
    sget-object p1, Lcom/vk/music/common/Music;->INSTANCE:Lcom/vk/music/common/Music;

    new-instance v1, Lcom/vk/music/g/MusicEvents10;

    iget-object v2, p0, Lcom/vk/music/model/v/MusicTrackModelImpl$b;->a:Lcom/vk/dto/music/MusicTrack;

    invoke-direct {v1, v0, v2}, Lcom/vk/music/g/MusicEvents10;-><init>(Lcom/vk/dto/music/MusicTrack;Lcom/vk/dto/music/MusicTrack;)V

    invoke-virtual {p1, v1}, Lcom/vk/music/common/Music;->a(Lcom/vk/music/g/MusicEvents6;)V

    .line 10
    iget-object p1, p0, Lcom/vk/music/model/v/MusicTrackModelImpl$b;->b:Lcom/vk/music/model/v/MusicTrackModelImpl;

    new-instance v0, Lcom/vk/music/model/v/MusicTrackModelImpl$b$a;

    invoke-direct {v0, p0}, Lcom/vk/music/model/v/MusicTrackModelImpl$b$a;-><init>(Lcom/vk/music/model/v/MusicTrackModelImpl$b;)V

    invoke-static {p1, v0}, Lcom/vk/music/model/v/MusicTrackModelImpl;->c(Lcom/vk/music/model/v/MusicTrackModelImpl;Lcom/vk/music/common/ObservableModel$b;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vk/music/model/v/MusicTrackModelImpl$b;->a(Ljava/lang/Integer;)V

    return-void
.end method
