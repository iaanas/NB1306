.class Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$1;
.super Ljava/lang/Object;
.source "PFFingerprintAuthDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;


# direct methods
.method constructor <init>(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;

    .line 72
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$1;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$1;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;

    invoke-virtual {v0}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->dismiss()V

    .line 76
    return-void
.end method
