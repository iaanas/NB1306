.class Lcom/example/xavier/aesstor/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/xavier/aesstor/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/xavier/aesstor/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/xavier/aesstor/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/xavier/aesstor/MainActivity;

    .line 75
    iput-object p1, p0, Lcom/example/xavier/aesstor/MainActivity$3;->this$0:Lcom/example/xavier/aesstor/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCodeInputSuccessful()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/example/xavier/aesstor/MainActivity$3;->this$0:Lcom/example/xavier/aesstor/MainActivity;

    const-string v1, "PIN is right!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 79
    iget-object v0, p0, Lcom/example/xavier/aesstor/MainActivity$3;->this$0:Lcom/example/xavier/aesstor/MainActivity;

    invoke-static {v0}, Lcom/example/xavier/aesstor/MainActivity;->access$000(Lcom/example/xavier/aesstor/MainActivity;)V

    .line 80
    return-void
.end method

.method public onFingerprintLoginFailed()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/example/xavier/aesstor/MainActivity$3;->this$0:Lcom/example/xavier/aesstor/MainActivity;

    const-string v1, "Fingerprint failed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 96
    return-void
.end method

.method public onFingerprintSuccessful()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/example/xavier/aesstor/MainActivity$3;->this$0:Lcom/example/xavier/aesstor/MainActivity;

    const-string v1, "Fingerprint successful!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 85
    iget-object v0, p0, Lcom/example/xavier/aesstor/MainActivity$3;->this$0:Lcom/example/xavier/aesstor/MainActivity;

    invoke-static {v0}, Lcom/example/xavier/aesstor/MainActivity;->access$000(Lcom/example/xavier/aesstor/MainActivity;)V

    .line 86
    return-void
.end method

.method public onPinLoginFailed()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/example/xavier/aesstor/MainActivity$3;->this$0:Lcom/example/xavier/aesstor/MainActivity;

    const-string v1, "Pin failed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 91
    return-void
.end method
