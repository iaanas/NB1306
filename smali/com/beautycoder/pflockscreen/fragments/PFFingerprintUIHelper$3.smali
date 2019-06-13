.class Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$3;
.super Ljava/lang/Object;
.source "PFFingerprintUIHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;
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

    .line 118
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$3;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$3;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;

    invoke-static {v0}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->access$100(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$3;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;

    .line 122
    invoke-static {v1}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->access$100(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/beautycoder/pflockscreen/R$color;->hint_color:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 121
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$3;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;

    invoke-static {v0}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->access$100(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$3;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;

    .line 124
    invoke-static {v1}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->access$100(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/beautycoder/pflockscreen/R$string;->fingerprint_hint_pf:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$3;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;

    invoke-static {v0}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->access$200(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/beautycoder/pflockscreen/R$drawable;->ic_fp_40px_pf:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    return-void
.end method
