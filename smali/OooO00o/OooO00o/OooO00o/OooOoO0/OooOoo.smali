.class public LOooO00o/OooO00o/OooO00o/OooOoO0/OooOoo;
.super Ljava/lang/Object;
.source "RepeaterParser.java"


# static fields
.field public static OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string/jumbo v0, "nm"

    const-string v1, "c"

    const-string/jumbo v2, "o"

    const-string/jumbo v3, "tr"

    const-string v4, "hd"

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;->OooO00o([Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

    move-result-object v0

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/OooOoo;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0O;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v7, v0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    .line 1
    :goto_0
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0o()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2
    sget-object v1, LOooO00o/OooO00o/OooO00o/OooOoO0/OooOoo;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;

    invoke-virtual {p0, v1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO00o;)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooOOO0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0oO()Z

    move-result v7

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p0, p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0OO;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;

    move-result-object v6

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {p0, p1, v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0Oo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;Z)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    move-result-object v5

    goto :goto_0

    .line 7
    :cond_3
    invoke-static {p0, p1, v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0Oo;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;LOooO00o/OooO00o/OooO00o/OooO0o;Z)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;

    move-result-object v4

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {p0}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooOO0O()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 9
    :cond_5
    new-instance p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0O;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOO0O;-><init>(Ljava/lang/String;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0O0;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0/OooOO0o;Z)V

    return-object p0
.end method
