.class public Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsFactory;
.super Ljava/lang/Object;
.source "PFSecurityUtilsFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPFSecurityUtilsInstance()Lcom/beautycoder/pflockscreen/security/IPFSecurityUtils;
    .locals 2

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 7
    invoke-static {}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;->getInstance()Lcom/beautycoder/pflockscreen/security/PFSecurityUtils;

    move-result-object v0

    return-object v0

    .line 9
    :cond_0
    invoke-static {}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;->getInstance()Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsOld;

    move-result-object v0

    return-object v0
.end method
