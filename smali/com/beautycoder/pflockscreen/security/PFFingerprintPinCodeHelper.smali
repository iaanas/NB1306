.class public Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;
.super Ljava/lang/Object;
.source "PFFingerprintPinCodeHelper.java"


# static fields
.field private static final FINGERPRINT_ALIAS:Ljava/lang/String; = "fp_fingerprint_lock_screen_key_store"

.field private static final PIN_ALIAS:Ljava/lang/String; = "fp_pin_lock_screen_key_store"

.field private static final ourInstance:Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;


# instance fields
.field private final pfSecurityUtils:Lcom/beautycoder/pflockscreen/security/IPFSecurityUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;

    invoke-direct {v0}, Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;-><init>()V

    sput-object v0, Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;->ourInstance:Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    nop

    .line 25
    invoke-static {}, Lcom/beautycoder/pflockscreen/security/PFSecurityUtilsFactory;->getPFSecurityUtilsInstance()Lcom/beautycoder/pflockscreen/security/IPFSecurityUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;->pfSecurityUtils:Lcom/beautycoder/pflockscreen/security/IPFSecurityUtils;

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;
    .locals 1

    .line 21
    sget-object v0, Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;->ourInstance:Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;

    return-object v0
.end method

.method private isFingerPrintAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    invoke-static {p1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v0

    return v0
.end method

.method private isFingerPrintReady(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-static {p1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public checkPin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "encodedPin"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;->pfSecurityUtils:Lcom/beautycoder/pflockscreen/security/IPFSecurityUtils;

    const-string v1, "fp_pin_lock_screen_key_store"

    invoke-interface {v0, v1, p2}, Lcom/beautycoder/pflockscreen/security/IPFSecurityUtils;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "pinCode":Ljava/lang/String;
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public delete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;->pfSecurityUtils:Lcom/beautycoder/pflockscreen/security/IPFSecurityUtils;

    const-string v1, "fp_pin_lock_screen_key_store"

    invoke-interface {v0, v1}, Lcom/beautycoder/pflockscreen/security/IPFSecurityUtils;->deleteKey(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public encodePin(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;->pfSecurityUtils:Lcom/beautycoder/pflockscreen/security/IPFSecurityUtils;

    const-string v1, "fp_pin_lock_screen_key_store"

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/beautycoder/pflockscreen/security/IPFSecurityUtils;->encode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPinCodeEncryptionKeyExist()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beautycoder/pflockscreen/security/PFSecurityException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;->pfSecurityUtils:Lcom/beautycoder/pflockscreen/security/IPFSecurityUtils;

    const-string v1, "fp_pin_lock_screen_key_store"

    invoke-interface {v0, v1}, Lcom/beautycoder/pflockscreen/security/IPFSecurityUtils;->isKeystoreContainAlias(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
