.class public final Lkotlin/jvm/internal/PrimitiveCompanionObjects;
.super Ljava/lang/Object;
.source "PrimitiveCompanionObjects.kt"


# static fields
# The value of this static final field might be set in the static constructor
.field private static final a:F = 1.4E-45f

# The value of this static final field might be set in the static constructor
.field private static final b:F = 3.4028235E38f

.field public static final c:Lkotlin/jvm/internal/PrimitiveCompanionObjects;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PrimitiveCompanionObjects;

    invoke-direct {v0}, Lkotlin/jvm/internal/PrimitiveCompanionObjects;-><init>()V

    sput-object v0, Lkotlin/jvm/internal/PrimitiveCompanionObjects;->INSTANCE:Lkotlin/jvm/internal/PrimitiveCompanionObjects;

    const/4 v0, 0x1

    .line 2
    sput v0, Lkotlin/jvm/internal/PrimitiveCompanionObjects;->a:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 3
    sput v0, Lkotlin/jvm/internal/PrimitiveCompanionObjects;->b:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .line 1
    sget v0, Lkotlin/jvm/internal/PrimitiveCompanionObjects;->b:F

    return v0
.end method

.method public final b()F
    .locals 1

    .line 1
    sget v0, Lkotlin/jvm/internal/PrimitiveCompanionObjects;->a:F

    return v0
.end method
