.class public final Lcom/vk/toggle/FeaturePublishSubject;
.super Ljava/lang/Object;
.source "FeaturePublishSubject.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/toggle/FeaturePublishSubject$a;,
        Lcom/vk/toggle/FeaturePublishSubject$b;
    }
.end annotation


# instance fields
.field private final a:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lcom/vk/toggle/FeaturePublishSubject$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->p()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "PublishSubject.create<FeatureSubjectEvent>()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vk/toggle/FeaturePublishSubject;->a:Lio/reactivex/subjects/PublishSubject;

    return-void
.end method


# virtual methods
.method public final a()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/vk/toggle/FeaturePublishSubject$a;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/vk/toggle/FeaturePublishSubject;->a:Lio/reactivex/subjects/PublishSubject;

    return-object v0
.end method

.method public final a(Lcom/vk/toggle/FeaturePublishSubject$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vk/toggle/FeaturePublishSubject;->a:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->b(Ljava/lang/Object;)V

    return-void
.end method
