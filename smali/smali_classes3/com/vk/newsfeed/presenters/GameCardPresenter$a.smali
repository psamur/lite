.class final Lcom/vk/newsfeed/presenters/GameCardPresenter$a;
.super Ljava/lang/Object;
.source "GameCardPresenter.kt"

# interfaces
.implements Lcom/vk/api/apps/AppsGetGamePage$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/newsfeed/presenters/GameCardPresenter;->D()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final a:Lcom/vk/newsfeed/presenters/GameCardPresenter$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/newsfeed/presenters/GameCardPresenter$a;

    invoke-direct {v0}, Lcom/vk/newsfeed/presenters/GameCardPresenter$a;-><init>()V

    sput-object v0, Lcom/vk/newsfeed/presenters/GameCardPresenter$a;->INSTANCE:Lcom/vk/newsfeed/presenters/GameCardPresenter$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/util/SparseArray;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/vk/dto/user/UserProfile;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/vk/dto/games/GameRequest;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/vk/core/util/AppContextHolder;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/vtosters/lite/data/v/Database;->a(Landroid/content/Context;)Lcom/vtosters/lite/data/v/Database;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vtosters/lite/data/v/Database;->a(ILandroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
