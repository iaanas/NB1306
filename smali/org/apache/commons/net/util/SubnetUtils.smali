.class public Lorg/apache/commons/net/util/SubnetUtils;
.super Ljava/lang/Object;
.source "SubnetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;
    }
.end annotation


# static fields
.field private static final IP_ADDRESS:Ljava/lang/String; = "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})"

.field private static final NBITS:I = 0x20

.field private static final SLASH_FORMAT:Ljava/lang/String; = "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})/(\\d{1,3})"

.field private static final addressPattern:Ljava/util/regex/Pattern;

.field private static final cidrPattern:Ljava/util/regex/Pattern;


# instance fields
.field private address:I

.field private broadcast:I

.field private inclusiveHostCount:Z

.field private netmask:I

.field private network:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-string v0, "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/util/SubnetUtils;->addressPattern:Ljava/util/regex/Pattern;

    .line 32
    const-string v0, "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})/(\\d{1,3})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/util/SubnetUtils;->cidrPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "cidrNotation"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->netmask:I

    .line 36
    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->address:I

    .line 37
    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->network:I

    .line 38
    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->broadcast:I

    .line 41
    iput-boolean v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->inclusiveHostCount:Z

    .line 51
    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils;->calculate(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "mask"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->netmask:I

    .line 36
    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->address:I

    .line 37
    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->network:I

    .line 38
    iput v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->broadcast:I

    .line 41
    iput-boolean v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->inclusiveHostCount:Z

    .line 62
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/util/SubnetUtils;->toCidrNotation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/SubnetUtils;->calculate(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/net/util/SubnetUtils;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/net/util/SubnetUtils;

    .line 27
    iget v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->netmask:I

    return v0
.end method

.method static synthetic access$100(Lorg/apache/commons/net/util/SubnetUtils;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/net/util/SubnetUtils;

    .line 27
    iget v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->network:I

    return v0
.end method

.method static synthetic access$200(Lorg/apache/commons/net/util/SubnetUtils;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/net/util/SubnetUtils;

    .line 27
    iget v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->address:I

    return v0
.end method

.method static synthetic access$300(Lorg/apache/commons/net/util/SubnetUtils;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/net/util/SubnetUtils;

    .line 27
    iget v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->broadcast:I

    return v0
.end method

.method static synthetic access$400(Lorg/apache/commons/net/util/SubnetUtils;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/net/util/SubnetUtils;
    .param p1, "x1"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils;->toInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/apache/commons/net/util/SubnetUtils;I)[I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/net/util/SubnetUtils;
    .param p1, "x1"    # I

    .line 27
    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils;->toArray(I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/net/util/SubnetUtils;
    .param p1, "x1"    # [I

    .line 27
    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils;->format([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/commons/net/util/SubnetUtils;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/net/util/SubnetUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/util/SubnetUtils;->toCidrNotation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private calculate(Ljava/lang/String;)V
    .locals 6
    .param p1, "mask"    # Ljava/lang/String;

    .line 258
    sget-object v0, Lorg/apache/commons/net/util/SubnetUtils;->cidrPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 260
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/SubnetUtils;->matchAddress(Ljava/util/regex/Matcher;)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/net/util/SubnetUtils;->address:I

    .line 264
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/net/util/SubnetUtils;->rangeCheck(III)I

    move-result v1

    .line 265
    .local v1, "cidrPart":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 266
    iget v3, p0, Lorg/apache/commons/net/util/SubnetUtils;->netmask:I

    rsub-int/lit8 v4, v2, 0x1f

    const/4 v5, 0x1

    shl-int v4, v5, v4

    or-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/net/util/SubnetUtils;->netmask:I

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    .end local v2    # "j":I
    :cond_0
    iget v2, p0, Lorg/apache/commons/net/util/SubnetUtils;->address:I

    iget v3, p0, Lorg/apache/commons/net/util/SubnetUtils;->netmask:I

    and-int/2addr v2, v3

    iput v2, p0, Lorg/apache/commons/net/util/SubnetUtils;->network:I

    .line 273
    iget v2, p0, Lorg/apache/commons/net/util/SubnetUtils;->network:I

    not-int v3, v3

    or-int/2addr v2, v3

    iput v2, p0, Lorg/apache/commons/net/util/SubnetUtils;->broadcast:I

    .line 274
    .end local v1    # "cidrPart":I
    nop

    .line 277
    return-void

    .line 275
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private format([I)Ljava/lang/String;
    .locals 3
    .param p1, "octets"    # [I

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .local v0, "str":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 321
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 323
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private matchAddress(Ljava/util/regex/Matcher;)I
    .locals 6
    .param p1, "matcher"    # Ljava/util/regex/Matcher;

    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, "addr":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    .line 298
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0xff

    invoke-direct {p0, v3, v4, v5}, Lorg/apache/commons/net/util/SubnetUtils;->rangeCheck(III)I

    move-result v3

    .line 299
    .local v3, "n":I
    and-int/lit16 v4, v3, 0xff

    sub-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x8

    shl-int v2, v4, v2

    or-int/2addr v0, v2

    .line 297
    .end local v3    # "n":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method private rangeCheck(III)I
    .locals 3
    .param p1, "value"    # I
    .param p2, "begin"    # I
    .param p3, "end"    # I

    .line 335
    if-lt p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    .line 336
    return p1

    .line 339
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] not in range ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private toArray(I)[I
    .locals 4
    .param p1, "val"    # I

    .line 308
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 309
    .local v0, "ret":[I
    const/4 v1, 0x3

    .local v1, "j":I
    :goto_0
    if-ltz v1, :cond_0

    .line 310
    aget v2, v0, v1

    rsub-int/lit8 v3, v1, 0x3

    mul-int/lit8 v3, v3, 0x8

    ushr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 309
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 312
    .end local v1    # "j":I
    :cond_0
    return-object v0
.end method

.method private toCidrNotation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "mask"    # Ljava/lang/String;

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lorg/apache/commons/net/util/SubnetUtils;->toInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->pop(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toInteger(Ljava/lang/String;)I
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 283
    sget-object v0, Lorg/apache/commons/net/util/SubnetUtils;->addressPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 284
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/SubnetUtils;->matchAddress(Ljava/util/regex/Matcher;)I

    move-result v1

    return v1

    .line 287
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final getInfo()Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;
    .locals 2

    .line 252
    new-instance v0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;-><init>(Lorg/apache/commons/net/util/SubnetUtils;Lorg/apache/commons/net/util/SubnetUtils$1;)V

    return-object v0
.end method

.method public isInclusiveHostCount()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lorg/apache/commons/net/util/SubnetUtils;->inclusiveHostCount:Z

    return v0
.end method

.method pop(I)I
    .locals 3
    .param p1, "x"    # I

    .line 347
    ushr-int/lit8 v0, p1, 0x1

    const v1, 0x55555555

    and-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 348
    const v0, 0x33333333

    and-int v1, p1, v0

    ushr-int/lit8 v2, p1, 0x2

    and-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 349
    .end local p1    # "x":I
    .local v1, "x":I
    ushr-int/lit8 p1, v1, 0x4

    add-int/2addr p1, v1

    const v0, 0xf0f0f0f

    and-int/2addr p1, v0

    .line 350
    .end local v1    # "x":I
    .restart local p1    # "x":I
    ushr-int/lit8 v0, p1, 0x8

    add-int/2addr p1, v0

    .line 351
    ushr-int/lit8 v0, p1, 0x10

    add-int/2addr p1, v0

    .line 352
    and-int/lit8 v0, p1, 0x3f

    return v0
.end method

.method public setInclusiveHostCount(Z)V
    .locals 0
    .param p1, "inclusiveHostCount"    # Z

    .line 83
    iput-boolean p1, p0, Lorg/apache/commons/net/util/SubnetUtils;->inclusiveHostCount:Z

    .line 84
    return-void
.end method
