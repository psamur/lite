.class public final Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem;
.super Lcom/vk/superapp/g/SuperAppItems3;
.source "SuperAppWidgetBirthdayItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem$a;
    }
.end annotation


# static fields
.field private static final g:I

.field public static final h:Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem$a;


# instance fields
.field private final d:Lcom/vk/dto/menu/widgets/SuperAppWidgetBday;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vk/dto/user/BirthdayEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vk/dto/user/BirthdayEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem;->h:Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem$a;

    .line 1
    sget v0, Lcom/vk/superapp/h/R;->super_app_bday_widget:I

    sput v0, Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem;->g:I

    return-void
.end method

.method public constructor <init>(Lcom/vk/dto/menu/widgets/SuperAppWidgetBday;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/menu/widgets/SuperAppWidgetBday;",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/dto/user/BirthdayEntry;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/dto/user/BirthdayEntry;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/vk/dto/menu/widgets/SuperAppWidget;->k0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vk/dto/menu/widgets/SuperAppWidget;->s1()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/vk/superapp/g/SuperAppItems3;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vk/dto/menu/widgets/SuperAppWidget$UpdateOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem;->d:Lcom/vk/dto/menu/widgets/SuperAppWidgetBday;

    iput-object p2, p0, Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem;->e:Ljava/util/List;

    iput-object p3, p0, Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem;->f:Ljava/util/List;

    return-void
.end method

.method public static final synthetic i()I
    .locals 1

    .line 1
    sget v0, Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem;->g:I

    return v0
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    sget v0, Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem;->g:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem;

    iget-object v0, p0, Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem;->d:Lcom/vk/dto/menu/widgets/SuperAppWidgetBday;

    iget-object v1, p1, Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem;->d:Lcom/vk/dto/menu/widgets/SuperAppWidgetBday;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem;->e:Ljava/util/List;

    iget-object v1, p1, Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem;->e:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem;->f:Ljava/util/List;

    iget-object p1, p1, Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem;->f:Ljava/util/List;

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

.method public final f()Lcom/vk/dto/menu/widgets/SuperAppWidgetBday;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem;->d:Lcom/vk/dto/menu/widgets/SuperAppWidgetBday;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vk/dto/user/BirthdayEntry;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem;->e:Ljava/util/List;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vk/dto/user/BirthdayEntry;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem;->f:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem;->d:Lcom/vk/dto/menu/widgets/SuperAppWidgetBday;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem;->e:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem;->f:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SuperAppWidgetBirthdayItem(data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem;->d:Lcom/vk/dto/menu/widgets/SuperAppWidgetBday;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", todayBday="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tomorrowBday="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/superapp/g/SuperAppWidgetBirthdayItem;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
