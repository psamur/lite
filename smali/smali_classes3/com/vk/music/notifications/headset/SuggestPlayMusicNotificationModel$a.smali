.class final Lcom/vk/music/notifications/headset/SuggestPlayMusicNotificationModel$a;
.super Ljava/lang/Object;
.source "SuggestPlayMusicNotificationModel.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/music/notifications/headset/SuggestPlayMusicNotificationModel1;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/vk/dto/common/data/VKList<",
        "Lcom/vk/dto/music/MusicTrack;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vk/music/notifications/headset/SuggestPlayMusicNotificationModel1;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/vk/music/notifications/headset/SuggestPlayMusicNotificationModel1;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/music/notifications/headset/SuggestPlayMusicNotificationModel$a;->a:Lcom/vk/music/notifications/headset/SuggestPlayMusicNotificationModel1;

    iput-object p2, p0, Lcom/vk/music/notifications/headset/SuggestPlayMusicNotificationModel$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vk/dto/common/data/VKList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/data/VKList<",
            "Lcom/vk/dto/music/MusicTrack;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "playAll:"

    aput-object v2, v0, v1

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "HSNMan"

    invoke-static {v1, v0}, Lcom/vk/music/logger/MusicLogger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/vk/music/notifications/headset/SuggestPlayMusicNotificationModel$a;->a:Lcom/vk/music/notifications/headset/SuggestPlayMusicNotificationModel1;

    invoke-static {v0}, Lcom/vk/music/notifications/headset/SuggestPlayMusicNotificationModel1;->a(Lcom/vk/music/notifications/headset/SuggestPlayMusicNotificationModel1;)Lcom/vk/music/player/PlayerModel;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vk/music/notifications/headset/SuggestPlayMusicNotificationModel$a;->a:Lcom/vk/music/notifications/headset/SuggestPlayMusicNotificationModel1;

    invoke-static {v2}, Lcom/vk/music/notifications/headset/SuggestPlayMusicNotificationModel1;->b(Lcom/vk/music/notifications/headset/SuggestPlayMusicNotificationModel1;)Lcom/vk/music/common/MusicPlaybackLaunchContext;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/vk/music/player/PlayerModel;->b(Lcom/vk/dto/music/MusicTrack;Ljava/util/List;Lcom/vk/music/common/MusicPlaybackLaunchContext;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/vk/music/notifications/headset/SuggestPlayMusicNotificationModel$a;->a:Lcom/vk/music/notifications/headset/SuggestPlayMusicNotificationModel1;

    iget-object v0, p0, Lcom/vk/music/notifications/headset/SuggestPlayMusicNotificationModel$a;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/vk/music/notifications/headset/SuggestPlayMusicNotificationModel1;->a(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/vk/dto/common/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vk/music/notifications/headset/SuggestPlayMusicNotificationModel$a;->a(Lcom/vk/dto/common/data/VKList;)V

    return-void
.end method
