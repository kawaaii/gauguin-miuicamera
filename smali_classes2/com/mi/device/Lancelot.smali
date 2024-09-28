.class public final Lcom/mi/device/Lancelot;
.super Lcom/mi/device/Common;
.source "Lancelot.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mi/device/Common;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public OooO0o0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public OooO0oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public OooOOOo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public OooOOo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public OooOoo()I
    .locals 1

    const/16 v0, 0x19a

    return v0
.end method

.method public OooOoo0()I
    .locals 1

    const/16 v0, 0x18b

    return v0
.end method

.method public Oooo0OO()Ljava/lang/String;
    .locals 1

    const-string v0, "3.2"

    return-object v0
.end method

.method public Oooo0o()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public OoooO00()Ljava/lang/String;
    .locals 1

    const-string v0, "v2"

    return-object v0
.end method

.method public OooooOO()Ljava/lang/String;
    .locals 1

    const-string v0, "uinput-fpc,uinput-goodix"

    return-object v0
.end method

.method public o00()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public o0000()S
    .locals 1

    .line 1
    sget-object v0, Lcom/mi/device/SlowMotionEnum;->OooO0OO:Lcom/mi/device/SlowMotionEnum;

    invoke-virtual {v0}, Lcom/mi/device/SlowMotionEnum;->OooO00o()S

    move-result v0

    return v0
.end method

.method public o00000()I
    .locals 1

    const/16 v0, 0x10d

    return v0
.end method

.method public o000000o()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public o00000Oo()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public o0000O()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public o0000Oo()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public o0000OoO()J
    .locals 2

    const-wide/16 v0, 0x320

    return-wide v0
.end method

.method public o0000o()[[I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 1
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    return-object v0

    :array_0
    .array-data 4
        0xcc0
        0x990
    .end array-data

    :array_1
    .array-data 4
        0xcc0
        0x72c
    .end array-data

    :array_2
    .array-data 4
        0xcc0
        0x5e2
    .end array-data
.end method

.method public o0000o0()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0:2.0"

    return-object v0
.end method

.method public o0000oO0()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0000oo0()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public o0000ooO()Ljava/lang/String;
    .locals 1

    const-string v0, "capture:0.6:1.0:2.0"

    return-object v0
.end method

.method public o000O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000O0O0()I
    .locals 1

    const v0, 0x4c4b40

    return v0
.end method

.method public o000O0oO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000O0oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000OO00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000OO0O()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000Oo0o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000OoOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000OoOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000o000()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000o00O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000o00o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000o0OO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000o0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000o0o0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000oOoO()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000oo0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000ooO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000ooOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000ooo0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O000()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O0000()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O00O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O00Oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O0O0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O0O00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0O0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O0OOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0Oo0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O0o0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O0o00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0oO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O0ooo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OO0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OO0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OOO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OOO0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OOOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OOooO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00Oo0Oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OoO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OoOOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OoOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OoOoO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00Ooooo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o00o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0O0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0O0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0oO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o0oOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oO00O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oO00o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oOOOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oOo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oOo00()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oOo0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oOoOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oo00O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oo0O0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oo0OO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oo0Oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oo0o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oo0o0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00ooO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00ooO0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00ooO00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00ooO0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00ooO0o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00ooOO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00ooOO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00ooOOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00ooOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00ooo0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00ooo0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00ooo0o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oooO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oooOO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oooOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0000O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O00o00()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O00o0O()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public o0O00o0o()I
    .locals 1

    const/16 v0, 0xb4

    return v0
.end method

.method public o0O0O00()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0O0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0O0o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0O0oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0OOO0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0OOOo()Ljava/lang/String;
    .locals 1

    const-string v0, "capture_intent"

    return-object v0
.end method

.method public o0O0OOo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0OOoo()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public o0O0Oo0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0Oooo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0o0oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0oO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0oO0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0oOoo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0oo0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0ooO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0ooo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0oooo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OO00oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0OO0O0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OO0o0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OO0o00()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OO0o0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OO0ooo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OOO0()Ljava/lang/String;
    .locals 1

    const-string v0, "true"

    return-object v0
.end method

.method public o0OOO0O0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OOooO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OOoooO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0OoO0o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OoOoO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0oOO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0oOo0O0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0ooOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
