.class final Lcom/vk/webapp/CommunityManagePresenter$h;
.super Ljava/lang/Object;
.source "CommunityManagePresenter.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/webapp/CommunityManagePresenter;->b()V
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
        "Lcom/vk/webapp/CoverUploadEventBus$e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vk/webapp/CommunityManagePresenter;


# direct methods
.method constructor <init>(Lcom/vk/webapp/CommunityManagePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/webapp/CommunityManagePresenter$h;->a:Lcom/vk/webapp/CommunityManagePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vk/webapp/CoverUploadEventBus$e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vk/webapp/CommunityManagePresenter$h;->a:Lcom/vk/webapp/CommunityManagePresenter;

    invoke-virtual {v0}, Lcom/vk/webapp/CommunityManagePresenter;->a()Lcom/vk/webapp/CommunityManagePresenter$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vk/webapp/CoverUploadEventBus$e;->b()F

    move-result p1

    invoke-interface {v0, p1}, Lcom/vk/webapp/CommunityManagePresenter$a;->c(F)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/vk/webapp/CoverUploadEventBus$e;

    invoke-virtual {p0, p1}, Lcom/vk/webapp/CommunityManagePresenter$h;->a(Lcom/vk/webapp/CoverUploadEventBus$e;)V

    return-void
.end method
