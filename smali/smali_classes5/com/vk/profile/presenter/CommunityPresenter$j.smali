.class final Lcom/vk/profile/presenter/CommunityPresenter$j;
.super Ljava/lang/Object;
.source "CommunityPresenter.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/profile/presenter/CommunityPresenter;->a(Landroid/location/Location;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;TR;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/vk/profile/presenter/CommunityPresenter$j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/profile/presenter/CommunityPresenter$j;

    invoke-direct {v0}, Lcom/vk/profile/presenter/CommunityPresenter$j;-><init>()V

    sput-object v0, Lcom/vk/profile/presenter/CommunityPresenter$j;->a:Lcom/vk/profile/presenter/CommunityPresenter$j;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vtosters/lite/api/execute/GetFullProfile$a;)Lcom/vtosters/lite/api/ExtendedCommunityProfile;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vtosters/lite/api/execute/GetFullProfile$a<",
            "Lcom/vtosters/lite/api/ExtendedCommunityProfile;",
            ">;)",
            "Lcom/vtosters/lite/api/ExtendedCommunityProfile;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/vtosters/lite/api/execute/GetFullProfile$a;->a:Lcom/vtosters/lite/api/ExtendedUserProfile;

    check-cast p1, Lcom/vtosters/lite/api/ExtendedCommunityProfile;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/vtosters/lite/api/execute/GetFullProfile$a;

    invoke-virtual {p0, p1}, Lcom/vk/profile/presenter/CommunityPresenter$j;->a(Lcom/vtosters/lite/api/execute/GetFullProfile$a;)Lcom/vtosters/lite/api/ExtendedCommunityProfile;

    move-result-object p1

    return-object p1
.end method
