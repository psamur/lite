.class final Lcom/vk/im/engine/i/i/UsersGetByIdCmd$b;
.super Ljava/lang/Object;
.source "UsersGetByIdCmd.kt"

# interfaces
.implements Lcom/vk/im/engine/utils/collection/IntCollection$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/im/engine/i/i/UsersGetByIdCmd;->a(Lcom/vk/im/engine/ImEnvironment;Lcom/vk/im/engine/utils/collection/IntCollection;)Lcom/vk/im/engine/i/i/UsersGetByIdCmd$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/util/SparseArray;

.field final synthetic b:Lcom/vk/im/engine/utils/collection/IntArraySet;

.field final synthetic c:Lcom/vk/im/engine/utils/collection/IntArraySet;


# direct methods
.method constructor <init>(Landroid/util/SparseArray;Lcom/vk/im/engine/utils/collection/IntArraySet;Lcom/vk/im/engine/utils/collection/IntArraySet;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/im/engine/i/i/UsersGetByIdCmd$b;->a:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/vk/im/engine/i/i/UsersGetByIdCmd$b;->b:Lcom/vk/im/engine/utils/collection/IntArraySet;

    iput-object p3, p0, Lcom/vk/im/engine/i/i/UsersGetByIdCmd$b;->c:Lcom/vk/im/engine/utils/collection/IntArraySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vk/im/engine/i/i/UsersGetByIdCmd$b;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/im/engine/models/users/User;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/vk/im/engine/i/i/UsersGetByIdCmd$b;->b:Lcom/vk/im/engine/utils/collection/IntArraySet;

    invoke-virtual {v0, p1}, Lcom/vk/im/engine/utils/collection/IntArraySet;->add(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/vk/im/engine/models/users/User;->Q1()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vk/im/engine/i/i/UsersGetByIdCmd$b;->c:Lcom/vk/im/engine/utils/collection/IntArraySet;

    invoke-virtual {v0, p1}, Lcom/vk/im/engine/utils/collection/IntArraySet;->add(I)V

    :cond_1
    :goto_0
    return-void
.end method
