.class public final Lcom/vk/dto/newsfeed/Rating;
.super Lcom/vk/core/serialize/Serializer$StreamParcelableAdapter;
.source "Rating.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/dto/newsfeed/Rating$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/vk/core/serialize/Serializer$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/core/serialize/Serializer$c<",
            "Lcom/vk/dto/newsfeed/Rating;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/vk/dto/newsfeed/Rating$b;


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:I

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/dto/newsfeed/Rating$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/dto/newsfeed/Rating$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/dto/newsfeed/Rating;->d:Lcom/vk/dto/newsfeed/Rating$b;

    .line 1
    new-instance v0, Lcom/vk/dto/newsfeed/Rating$a;

    invoke-direct {v0}, Lcom/vk/dto/newsfeed/Rating$a;-><init>()V

    .line 2
    sput-object v0, Lcom/vk/dto/newsfeed/Rating;->CREATOR:Lcom/vk/core/serialize/Serializer$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vk/core/serialize/Serializer$StreamParcelableAdapter;-><init>()V

    iput-object p1, p0, Lcom/vk/dto/newsfeed/Rating;->a:Ljava/lang/Integer;

    iput p2, p0, Lcom/vk/dto/newsfeed/Rating;->b:I

    iput-boolean p3, p0, Lcom/vk/dto/newsfeed/Rating;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/vk/core/serialize/Serializer;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/vk/dto/newsfeed/Rating;->a:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/vk/core/serialize/Serializer;->a(Ljava/lang/Integer;)V

    .line 3
    iget v0, p0, Lcom/vk/dto/newsfeed/Rating;->b:I

    invoke-virtual {p1, v0}, Lcom/vk/core/serialize/Serializer;->a(I)V

    .line 4
    iget-boolean v0, p0, Lcom/vk/dto/newsfeed/Rating;->c:Z

    invoke-virtual {p1, v0}, Lcom/vk/core/serialize/Serializer;->a(Z)V

    return-void
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vk/dto/newsfeed/Rating;->a:Ljava/lang/Integer;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/vk/dto/newsfeed/Rating;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/vk/dto/newsfeed/Rating;

    iget-object v0, p0, Lcom/vk/dto/newsfeed/Rating;->a:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/vk/dto/newsfeed/Rating;->a:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vk/dto/newsfeed/Rating;->b:I

    iget v1, p1, Lcom/vk/dto/newsfeed/Rating;->b:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/vk/dto/newsfeed/Rating;->c:Z

    iget-boolean p1, p1, Lcom/vk/dto/newsfeed/Rating;->c:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final h(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/vk/dto/newsfeed/Rating;->b:I

    return-void
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/vk/dto/newsfeed/Rating;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/vk/dto/newsfeed/Rating;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/vk/dto/newsfeed/Rating;->c:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final t1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/vk/dto/newsfeed/Rating;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rating(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/dto/newsfeed/Rating;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vk/dto/newsfeed/Rating;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", canChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vk/dto/newsfeed/Rating;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vk/dto/newsfeed/Rating;->b:I

    return v0
.end method

.method public final v1()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vk/dto/newsfeed/Rating;->a:Ljava/lang/Integer;

    return-object v0
.end method
