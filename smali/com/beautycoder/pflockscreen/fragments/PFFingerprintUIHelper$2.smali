.class Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$2;
.super Ljava/lang/Object;
.source "PFFingerprintUIHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->onAuthenticationSucceeded(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;


# direct methods
.method constructor <init>(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;

    .line 101
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$2;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$2;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;

    invoke-static {v0}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->access$000(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;)Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthListener;->onAuthenticated()V

    .line 105
    return-void
.end method
