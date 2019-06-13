.class synthetic Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$2;
.super Ljava/lang/Object;
.source "PFFingerprintAuthDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$beautycoder$pflockscreen$fragments$PFFingerprintAuthDialogFragment$Stage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 124
    invoke-static {}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;->values()[Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$2;->$SwitchMap$com$beautycoder$pflockscreen$fragments$PFFingerprintAuthDialogFragment$Stage:[I

    :try_start_0
    sget-object v0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$2;->$SwitchMap$com$beautycoder$pflockscreen$fragments$PFFingerprintAuthDialogFragment$Stage:[I

    sget-object v1, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;->FINGERPRINT:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;

    invoke-virtual {v1}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
