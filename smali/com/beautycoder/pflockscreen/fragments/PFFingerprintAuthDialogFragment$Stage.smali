.class public final enum Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;
.super Ljava/lang/Enum;
.source "PFFingerprintAuthDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;

.field public static final enum FINGERPRINT:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 141
    new-instance v0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;

    const-string v1, "FINGERPRINT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;->FINGERPRINT:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;

    .line 140
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;

    sget-object v1, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;->FINGERPRINT:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;

    aput-object v1, v0, v2

    sput-object v0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;->$VALUES:[Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 140
    const-class v0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;
    .locals 1

    .line 140
    sget-object v0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;->$VALUES:[Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;

    invoke-virtual {v0}, [Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;

    return-object v0
.end method
