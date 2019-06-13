.class Lcom/example/xavier/aesstor/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenCodeCreateListener;


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

    .line 65
    iput-object p1, p0, Lcom/example/xavier/aesstor/MainActivity$2;->this$0:Lcom/example/xavier/aesstor/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCodeCreated(Ljava/lang/String;)V
    .locals 3
    .param p1, "encodedCode"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/example/xavier/aesstor/MainActivity$2;->this$0:Lcom/example/xavier/aesstor/MainActivity;

    const-string v1, "Code created!!!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 69
    iget-object v0, p0, Lcom/example/xavier/aesstor/MainActivity$2;->this$0:Lcom/example/xavier/aesstor/MainActivity;

    invoke-static {v0, p1}, Lcom/example/xavier/aesstor/PreferencesSettings;->saveToPref(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/example/xavier/aesstor/MainActivity$2;->this$0:Lcom/example/xavier/aesstor/MainActivity;

    invoke-static {v0}, Lcom/example/xavier/aesstor/MainActivity;->access$000(Lcom/example/xavier/aesstor/MainActivity;)V

    .line 71
    return-void
.end method
