.class final Lcom/vk/profile/presenter/f/CommunityAddressPresenter$b;
.super Ljava/lang/Object;
.source "CommunityAddressPresenter.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/profile/presenter/f/CommunityAddressPresenter;->q()V
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
        "TT;",
        "Lio/reactivex/ObservableSource<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vk/profile/presenter/f/CommunityAddressPresenter;


# direct methods
.method constructor <init>(Lcom/vk/profile/presenter/f/CommunityAddressPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/profile/presenter/f/CommunityAddressPresenter$b;->a:Lcom/vk/profile/presenter/f/CommunityAddressPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vk/core/util/Optional;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/core/util/Optional<",
            "Landroid/location/Location;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/vk/dto/profile/PlainAddress;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vk/profile/presenter/f/CommunityAddressPresenter$b;->a:Lcom/vk/profile/presenter/f/CommunityAddressPresenter;

    invoke-virtual {v0}, Lcom/vk/profile/presenter/f/CommunityAddressPresenter;->a()Lcom/vk/profile/data/AddressesRepository;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vk/core/util/Optional;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    invoke-virtual {v0, p1}, Lcom/vk/profile/data/AddressesRepository;->a(Landroid/location/Location;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/vk/core/util/Optional;

    invoke-virtual {p0, p1}, Lcom/vk/profile/presenter/f/CommunityAddressPresenter$b;->a(Lcom/vk/core/util/Optional;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
