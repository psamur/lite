.class public final Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;
.super Lcom/vk/im/engine/i/BaseImEngineCmd;
.source "MsgGetByIdExtCmd.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/im/engine/i/BaseImEngineCmd<",
        "Lcom/vk/im/engine/models/messages/MsgsExt;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/vk/im/engine/models/messages/MsgIdType;

.field private final c:Lcom/vk/im/engine/utils/collection/IntCollection;

.field private final d:Lcom/vk/im/engine/models/Source;

.field private final e:Z

.field private final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/vk/im/engine/models/messages/MsgIdType;ILcom/vk/im/engine/models/Source;ZLjava/lang/Object;)V
    .locals 6

    .line 6
    invoke-static {p2}, Lcom/vk/im/engine/utils/collection/IntCollectionExt;->a(I)Lcom/vk/im/engine/utils/collection/IntArrayList;

    move-result-object v2

    const-string p2, "intListOf(msgIds)"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;-><init>(Lcom/vk/im/engine/models/messages/MsgIdType;Lcom/vk/im/engine/utils/collection/IntCollection;Lcom/vk/im/engine/models/Source;ZLjava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vk/im/engine/models/messages/MsgIdType;ILcom/vk/im/engine/models/Source;ZLjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 4
    sget-object p3, Lcom/vk/im/engine/models/Source;->CACHE:Lcom/vk/im/engine/models/Source;

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move v4, p4

    :goto_0
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x0

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;-><init>(Lcom/vk/im/engine/models/messages/MsgIdType;ILcom/vk/im/engine/models/Source;ZLjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/vk/im/engine/models/messages/MsgIdType;Lcom/vk/im/engine/utils/collection/IntCollection;Lcom/vk/im/engine/models/Source;ZLjava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/vk/im/engine/i/BaseImEngineCmd;-><init>()V

    iput-object p1, p0, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->b:Lcom/vk/im/engine/models/messages/MsgIdType;

    iput-object p2, p0, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->c:Lcom/vk/im/engine/utils/collection/IntCollection;

    iput-object p3, p0, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->d:Lcom/vk/im/engine/models/Source;

    iput-boolean p4, p0, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->e:Z

    iput-object p5, p0, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vk/im/engine/models/messages/MsgIdType;Lcom/vk/im/engine/utils/collection/IntCollection;Lcom/vk/im/engine/models/Source;ZLjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 1
    sget-object p3, Lcom/vk/im/engine/models/Source;->CACHE:Lcom/vk/im/engine/models/Source;

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move v4, p4

    :goto_0
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x0

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;-><init>(Lcom/vk/im/engine/models/messages/MsgIdType;Lcom/vk/im/engine/utils/collection/IntCollection;Lcom/vk/im/engine/models/Source;ZLjava/lang/Object;)V

    return-void
.end method

.method private final a(Lcom/vk/im/engine/ImEnvironment;Lcom/vk/im/engine/models/EntityIntMap;)Lcom/vk/im/engine/models/ProfilesInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/im/engine/ImEnvironment;",
            "Lcom/vk/im/engine/models/EntityIntMap<",
            "Lcom/vk/im/engine/models/messages/Msg;",
            ">;)",
            "Lcom/vk/im/engine/models/ProfilesInfo;"
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/vk/im/engine/utils/m/MsgRelatedProfilesFinder;->INSTANCE:Lcom/vk/im/engine/utils/m/MsgRelatedProfilesFinder;

    invoke-virtual {v0, p2}, Lcom/vk/im/engine/utils/m/MsgRelatedProfilesFinder;->a(Lcom/vk/im/engine/models/EntityIntMap;)Lcom/vk/im/engine/models/ProfilesIds1;

    move-result-object p2

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->a(Lcom/vk/im/engine/ImEnvironment;Lcom/vk/im/engine/models/ProfilesIds1;)Lcom/vk/im/engine/models/ProfilesInfo;

    move-result-object p1

    return-object p1
.end method

.method private final a(Lcom/vk/im/engine/ImEnvironment;Lcom/vk/im/engine/models/ProfilesIds1;)Lcom/vk/im/engine/models/ProfilesInfo;
    .locals 1

    .line 7
    invoke-virtual {p2}, Lcom/vk/im/engine/models/ProfilesIds1;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/vk/im/engine/models/ProfilesInfo;

    invoke-direct {p1}, Lcom/vk/im/engine/models/ProfilesInfo;-><init>()V

    return-object p1

    .line 8
    :cond_0
    new-instance v0, Lcom/vk/im/engine/commands/etc/ProfilesInfoGetArgs$a;

    invoke-direct {v0}, Lcom/vk/im/engine/commands/etc/ProfilesInfoGetArgs$a;-><init>()V

    .line 9
    invoke-virtual {v0, p2}, Lcom/vk/im/engine/commands/etc/ProfilesInfoGetArgs$a;->a(Lcom/vk/im/engine/models/ProfilesIds1;)Lcom/vk/im/engine/commands/etc/ProfilesInfoGetArgs$a;

    .line 10
    iget-object p2, p0, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->d:Lcom/vk/im/engine/models/Source;

    invoke-virtual {v0, p2}, Lcom/vk/im/engine/commands/etc/ProfilesInfoGetArgs$a;->a(Lcom/vk/im/engine/models/Source;)Lcom/vk/im/engine/commands/etc/ProfilesInfoGetArgs$a;

    .line 11
    iget-boolean p2, p0, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->e:Z

    invoke-virtual {v0, p2}, Lcom/vk/im/engine/commands/etc/ProfilesInfoGetArgs$a;->a(Z)Lcom/vk/im/engine/commands/etc/ProfilesInfoGetArgs$a;

    .line 12
    iget-object p2, p0, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->f:Ljava/lang/Object;

    invoke-virtual {v0, p2}, Lcom/vk/im/engine/commands/etc/ProfilesInfoGetArgs$a;->a(Ljava/lang/Object;)Lcom/vk/im/engine/commands/etc/ProfilesInfoGetArgs$a;

    .line 13
    invoke-virtual {v0}, Lcom/vk/im/engine/commands/etc/ProfilesInfoGetArgs$a;->a()Lcom/vk/im/engine/commands/etc/ProfilesInfoGetArgs;

    move-result-object p2

    .line 14
    new-instance v0, Lcom/vk/im/engine/commands/etc/ProfilesGetCmd;

    invoke-direct {v0, p2}, Lcom/vk/im/engine/commands/etc/ProfilesGetCmd;-><init>(Lcom/vk/im/engine/commands/etc/ProfilesInfoGetArgs;)V

    .line 15
    invoke-interface {p1, p0, v0}, Lcom/vk/im/engine/ImEnvironment;->a(Ljava/lang/Object;Lcom/vk/im/engine/i/ImEngineCmd;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "env.submitCommandDirect(this, cmd)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/vk/im/engine/models/ProfilesInfo;

    return-object p1
.end method

.method private final b(Lcom/vk/im/engine/ImEnvironment;)Lcom/vk/im/engine/models/EntityIntMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/im/engine/ImEnvironment;",
            ")",
            "Lcom/vk/im/engine/models/EntityIntMap<",
            "Lcom/vk/im/engine/models/messages/Msg;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/vk/im/engine/commands/messages/MsgGetByIdCmd;

    iget-object v1, p0, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->b:Lcom/vk/im/engine/models/messages/MsgIdType;

    iget-object v2, p0, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->c:Lcom/vk/im/engine/utils/collection/IntCollection;

    iget-object v3, p0, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->d:Lcom/vk/im/engine/models/Source;

    iget-boolean v4, p0, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->e:Z

    iget-object v5, p0, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->f:Ljava/lang/Object;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/vk/im/engine/commands/messages/MsgGetByIdCmd;-><init>(Lcom/vk/im/engine/models/messages/MsgIdType;Lcom/vk/im/engine/utils/collection/IntCollection;Lcom/vk/im/engine/models/Source;ZLjava/lang/Object;)V

    invoke-interface {p1, p0, v6}, Lcom/vk/im/engine/ImEnvironment;->a(Ljava/lang/Object;Lcom/vk/im/engine/i/ImEngineCmd;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "env.submitCommandDirect(\u2026waitNetwork, changerTag))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/vk/im/engine/models/EntityIntMap;

    return-object p1
.end method


# virtual methods
.method public a(Lcom/vk/im/engine/ImEnvironment;)Lcom/vk/im/engine/models/messages/MsgsExt;
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->b(Lcom/vk/im/engine/ImEnvironment;)Lcom/vk/im/engine/models/EntityIntMap;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->a(Lcom/vk/im/engine/ImEnvironment;Lcom/vk/im/engine/models/EntityIntMap;)Lcom/vk/im/engine/models/ProfilesInfo;

    move-result-object p1

    .line 4
    new-instance v1, Lcom/vk/im/engine/models/messages/MsgsExt;

    invoke-direct {v1, v0, p1}, Lcom/vk/im/engine/models/messages/MsgsExt;-><init>(Lcom/vk/im/engine/models/EntityIntMap;Lcom/vk/im/engine/models/ProfilesInfo;)V

    return-object v1
.end method

.method public bridge synthetic a(Lcom/vk/im/engine/ImEnvironment;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->a(Lcom/vk/im/engine/ImEnvironment;)Lcom/vk/im/engine/models/messages/MsgsExt;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;

    iget-object v0, p0, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->b:Lcom/vk/im/engine/models/messages/MsgIdType;

    iget-object v1, p1, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->b:Lcom/vk/im/engine/models/messages/MsgIdType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->c:Lcom/vk/im/engine/utils/collection/IntCollection;

    iget-object v1, p1, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->c:Lcom/vk/im/engine/utils/collection/IntCollection;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->d:Lcom/vk/im/engine/models/Source;

    iget-object v1, p1, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->d:Lcom/vk/im/engine/models/Source;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->e:Z

    iget-boolean v1, p1, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->e:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->f:Ljava/lang/Object;

    iget-object p1, p1, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->f:Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->b:Lcom/vk/im/engine/models/messages/MsgIdType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->c:Lcom/vk/im/engine/utils/collection/IntCollection;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->d:Lcom/vk/im/engine/models/Source;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->e:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->f:Ljava/lang/Object;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgGetByIdExtCmd(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->b:Lcom/vk/im/engine/models/messages/MsgIdType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", msgIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->c:Lcom/vk/im/engine/utils/collection/IntCollection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->d:Lcom/vk/im/engine/models/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAwaitNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", changerTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/im/engine/commands/messages/MsgGetByIdExtCmd;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
