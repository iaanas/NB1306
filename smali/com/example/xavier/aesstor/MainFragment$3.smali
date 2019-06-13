.class Lcom/example/xavier/aesstor/MainFragment$3;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/xavier/aesstor/MainFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/xavier/aesstor/MainFragment;


# direct methods
.method constructor <init>(Lcom/example/xavier/aesstor/MainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/xavier/aesstor/MainFragment;

    .line 69
    iput-object p1, p0, Lcom/example/xavier/aesstor/MainFragment$3;->this$0:Lcom/example/xavier/aesstor/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 72
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 73
    .local v0, "cryptDir":Ljava/io/File;
    iget-object v1, p0, Lcom/example/xavier/aesstor/MainFragment$3;->this$0:Lcom/example/xavier/aesstor/MainFragment;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/xavier/aesstor/MainFragment;->removeAllDecryptedFiles(Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lcom/example/xavier/aesstor/MainFragment$3;->this$0:Lcom/example/xavier/aesstor/MainFragment;

    invoke-virtual {v1}, Lcom/example/xavier/aesstor/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Clean /decrypt/!"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 75
    return-void
.end method
