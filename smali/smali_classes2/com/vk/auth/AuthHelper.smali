.class public final Lcom/vk/auth/AuthHelper;
.super Ljava/lang/Object;
.source "AuthHelper.kt"


# static fields
.field public static final a:Lcom/vk/auth/AuthHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/vk/auth/AuthHelper;

    invoke-direct {v0}, Lcom/vk/auth/AuthHelper;-><init>()V

    sput-object v0, Lcom/vk/auth/AuthHelper;->INSTANCE:Lcom/vk/auth/AuthHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lio/reactivex/Observable;Landroid/content/Context;Lcom/vk/auth/main/AuthModel;Lcom/vk/auth/main/UsersStore;Lcom/vk/auth/main/VkAuthState;Lcom/vk/auth/main/TrustedHashProvider;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lcom/vk/auth/api/models/AuthResult;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/vk/auth/main/AuthModel;",
            "Lcom/vk/auth/main/UsersStore;",
            "Lcom/vk/auth/main/VkAuthState;",
            "Lcom/vk/auth/main/TrustedHashProvider;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/vk/auth/api/models/AuthResult;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/vk/auth/AuthHelper$a;

    invoke-direct {v0, p5, p6, p2}, Lcom/vk/auth/AuthHelper$a;-><init>(Lcom/vk/auth/main/VkAuthState;Lcom/vk/auth/main/TrustedHashProvider;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->d(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 24
    new-instance p5, Lcom/vk/auth/AuthHelper$b;

    invoke-direct {p5, p3, p4, p2}, Lcom/vk/auth/AuthHelper$b;-><init>(Lcom/vk/auth/main/AuthModel;Lcom/vk/auth/main/UsersStore;Landroid/content/Context;)V

    invoke-virtual {p1, p5}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "this\n                .do\u2026esult }\n                }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static synthetic a(Lcom/vk/auth/AuthHelper;Landroid/content/Context;Lcom/vk/auth/main/AuthModel;Ljava/lang/String;ILcom/vk/auth/main/UsersStore;ILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/vk/auth/AuthHelper;->a(Landroid/content/Context;Lcom/vk/auth/main/AuthModel;Ljava/lang/String;ILcom/vk/auth/main/UsersStore;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/vk/auth/AuthHelper;Lio/reactivex/Observable;Landroid/content/Context;Lcom/vk/auth/main/AuthModel;Lcom/vk/auth/main/UsersStore;Lcom/vk/auth/main/VkAuthState;Lcom/vk/auth/main/TrustedHashProvider;ILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 9

    and-int/lit8 v0, p7, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, p5

    :goto_0
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, p6

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 22
    invoke-direct/range {v2 .. v8}, Lcom/vk/auth/AuthHelper;->a(Lio/reactivex/Observable;Landroid/content/Context;Lcom/vk/auth/main/AuthModel;Lcom/vk/auth/main/UsersStore;Lcom/vk/auth/main/VkAuthState;Lcom/vk/auth/main/TrustedHashProvider;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private final a(Landroid/content/Context;)Z
    .locals 1

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.vtosters.lite"

    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.vk.im"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static final synthetic a(Lcom/vk/auth/AuthHelper;Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/vk/auth/AuthHelper;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/vk/auth/main/AuthModel;Lcom/vk/auth/main/VkAuthState;Lcom/vk/auth/main/UsersStore;Lcom/vk/auth/main/TrustedHashProvider;Lcom/vk/auth/main/AuthStateTransformer;)Lio/reactivex/Observable;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/vk/auth/main/AuthModel;",
            "Lcom/vk/auth/main/VkAuthState;",
            "Lcom/vk/auth/main/UsersStore;",
            "Lcom/vk/auth/main/TrustedHashProvider;",
            "Lcom/vk/auth/main/AuthStateTransformer;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/vk/auth/api/models/AuthResult;",
            ">;"
        }
    .end annotation

    move-object v7, p3

    move-object/from16 v8, p5

    move-object/from16 v0, p6

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p3}, Lcom/vk/auth/main/AuthStateTransformer;->a(Lcom/vk/auth/main/VkAuthState;)Lcom/vk/auth/main/VkAuthState;

    :cond_0
    const-string v10, "appContext"

    if-eqz v8, :cond_1

    .line 4
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8, v9, p3}, Lcom/vk/auth/main/TrustedHashProvider;->a(Landroid/content/Context;Lcom/vk/auth/main/VkAuthState;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/vk/auth/main/AuthModel;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v11, Lcom/vk/auth/api/commands/AuthCommand;

    .line 7
    invoke-interface {p2}, Lcom/vk/auth/main/AuthModel;->c()I

    move-result v4

    .line 8
    invoke-interface {p2}, Lcom/vk/auth/main/AuthModel;->b()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-interface {p2}, Lcom/vk/auth/main/AuthModel;->d()Z

    move-result v6

    move-object v0, v11

    move-object v1, p3

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/vk/auth/api/commands/AuthCommand;-><init>(Lcom/vk/auth/main/VkAuthState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    move-object v3, p2

    .line 11
    invoke-interface {p2, v11}, Lcom/vk/auth/main/AuthModel;->a(Lcom/vk/auth/api/commands/AuthCommand;)Lio/reactivex/Observable;

    move-result-object v1

    .line 12
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, v9

    move-object/from16 v4, p4

    move-object v5, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/vk/auth/AuthHelper;->a(Lio/reactivex/Observable;Landroid/content/Context;Lcom/vk/auth/main/AuthModel;Lcom/vk/auth/main/UsersStore;Lcom/vk/auth/main/VkAuthState;Lcom/vk/auth/main/TrustedHashProvider;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lcom/vk/auth/main/AuthModel;Ljava/lang/String;ILcom/vk/auth/main/UsersStore;)Lio/reactivex/Observable;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/vk/auth/main/AuthModel;",
            "Ljava/lang/String;",
            "I",
            "Lcom/vk/auth/main/UsersStore;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/vk/auth/api/models/AuthResult;",
            ">;"
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/vk/auth/api/commands/AuthByExchangeTokenCommand;

    .line 15
    invoke-interface {p2}, Lcom/vk/auth/main/AuthModel;->g()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-interface {p2}, Lcom/vk/auth/main/AuthModel;->c()I

    move-result v2

    move-object v3, p3

    move/from16 v4, p4

    .line 17
    invoke-direct {v0, v1, v4, p3, v2}, Lcom/vk/auth/api/commands/AuthByExchangeTokenCommand;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    move-object v1, p2

    .line 18
    invoke-interface {p2, v0}, Lcom/vk/auth/main/AuthModel;->a(Lcom/vk/auth/api/commands/AuthByExchangeTokenCommand;)Lio/reactivex/Observable;

    move-result-object v4

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v0, "context.applicationContext"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x18

    const/4 v11, 0x0

    move-object v3, p0

    move-object v6, p2

    move-object/from16 v7, p5

    invoke-static/range {v3 .. v11}, Lcom/vk/auth/AuthHelper;->a(Lcom/vk/auth/AuthHelper;Lio/reactivex/Observable;Landroid/content/Context;Lcom/vk/auth/main/AuthModel;Lcom/vk/auth/main/UsersStore;Lcom/vk/auth/main/VkAuthState;Lcom/vk/auth/main/TrustedHashProvider;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
