.class final Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory$twoTabsData$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PagerAdapterFactory.kt"

# interfaces
.implements Lkotlin/jvm/b/Functions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;-><init>(Landroid/content/Context;Lcom/vk/im/ui/components/msg_search/vc/VcCallback;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/Functions<",
        "Ljava/util/List<",
        "+",
        "Lcom/vk/im/ui/components/msg_search/vc/SearchPageData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;


# direct methods
.method constructor <init>(Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory$twoTabsData$2;->this$0:Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory$twoTabsData$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vk/im/ui/components/msg_search/vc/SearchPageData;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/vk/im/ui/components/msg_search/vc/SearchPageData;

    .line 2
    new-instance v12, Lcom/vk/im/ui/components/msg_search/vc/SearchPageData;

    iget-object v2, v0, Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory$twoTabsData$2;->this$0:Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;

    invoke-static {v2}, Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;->b(Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/vk/im/ui/R4;->vkim_search_tab_title_dialogs:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "context.getString(R.stri\u2026search_tab_title_dialogs)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v4, Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory$twoTabsData$2$1;

    iget-object v2, v0, Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory$twoTabsData$2;->this$0:Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;

    invoke-static {v2}, Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;->a(Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;)Lcom/vk/im/ui/components/msg_search/vc/VcCallback;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory$twoTabsData$2$1;-><init>(Lcom/vk/im/ui/components/msg_search/vc/VcCallback;)V

    .line 4
    sget-object v5, Lcom/vk/im/engine/models/SearchMode;->PEERS:Lcom/vk/im/engine/models/SearchMode;

    .line 5
    iget-object v2, v0, Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory$twoTabsData$2;->this$0:Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;

    invoke-static {v2}, Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;->e(Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;)J

    move-result-wide v6

    .line 6
    new-instance v8, Lcom/vk/im/ui/components/msg_search/vc/MsgSearchListAdapter;

    iget-object v2, v0, Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory$twoTabsData$2;->this$0:Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;

    invoke-static {v2}, Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;->a(Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;)Lcom/vk/im/ui/components/msg_search/vc/VcCallback;

    move-result-object v2

    iget-object v9, v0, Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory$twoTabsData$2;->this$0:Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;

    invoke-static {v9}, Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;->c(Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;)Landroid/view/LayoutInflater;

    move-result-object v9

    invoke-direct {v8, v2, v9}, Lcom/vk/im/ui/components/msg_search/vc/MsgSearchListAdapter;-><init>(Lcom/vk/im/ui/components/msg_search/vc/VcCallback;Landroid/view/LayoutInflater;)V

    const/4 v9, 0x0

    const/16 v10, 0x20

    const/4 v11, 0x0

    move-object v2, v12

    .line 7
    invoke-direct/range {v2 .. v11}, Lcom/vk/im/ui/components/msg_search/vc/SearchPageData;-><init>(Ljava/lang/String;Lkotlin/jvm/b/Functions;Lcom/vk/im/engine/models/SearchMode;JLcom/vk/im/ui/components/msg_search/vc/MsgSearchListAdapter;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    aput-object v12, v1, v2

    .line 8
    new-instance v2, Lcom/vk/im/ui/components/msg_search/vc/SearchPageData;

    iget-object v3, v0, Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory$twoTabsData$2;->this$0:Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;

    invoke-static {v3}, Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;->b(Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/vk/im/ui/R4;->vkim_search_tab_title_messages:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v3, "context.getString(R.stri\u2026earch_tab_title_messages)"

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v15, Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory$twoTabsData$2$2;

    iget-object v3, v0, Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory$twoTabsData$2;->this$0:Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;

    invoke-static {v3}, Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;->a(Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;)Lcom/vk/im/ui/components/msg_search/vc/VcCallback;

    move-result-object v3

    invoke-direct {v15, v3}, Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory$twoTabsData$2$2;-><init>(Lcom/vk/im/ui/components/msg_search/vc/VcCallback;)V

    .line 10
    sget-object v16, Lcom/vk/im/engine/models/SearchMode;->MESSAGES:Lcom/vk/im/engine/models/SearchMode;

    .line 11
    iget-object v3, v0, Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory$twoTabsData$2;->this$0:Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;

    invoke-static {v3}, Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;->d(Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;)J

    move-result-wide v17

    .line 12
    new-instance v3, Lcom/vk/im/ui/components/msg_search/vc/MsgSearchListAdapter;

    iget-object v4, v0, Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory$twoTabsData$2;->this$0:Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;

    invoke-static {v4}, Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;->a(Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;)Lcom/vk/im/ui/components/msg_search/vc/VcCallback;

    move-result-object v4

    iget-object v5, v0, Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory$twoTabsData$2;->this$0:Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;

    invoke-static {v5}, Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;->c(Lcom/vk/im/ui/components/msg_search/vc/PagerAdapterFactory;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/vk/im/ui/components/msg_search/vc/MsgSearchListAdapter;-><init>(Lcom/vk/im/ui/components/msg_search/vc/VcCallback;Landroid/view/LayoutInflater;)V

    const/16 v20, 0x0

    const/16 v21, 0x20

    const/16 v22, 0x0

    move-object v13, v2

    move-object/from16 v19, v3

    .line 13
    invoke-direct/range {v13 .. v22}, Lcom/vk/im/ui/components/msg_search/vc/SearchPageData;-><init>(Ljava/lang/String;Lkotlin/jvm/b/Functions;Lcom/vk/im/engine/models/SearchMode;JLcom/vk/im/ui/components/msg_search/vc/MsgSearchListAdapter;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 14
    invoke-static {v1}, Lkotlin/collections/l;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
