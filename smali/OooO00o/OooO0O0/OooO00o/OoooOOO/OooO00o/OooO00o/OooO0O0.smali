.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooOOO/OooO00o/OooO00o/OooO0O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic OooO00o:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooOOO/OooO00o/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooOOO/OooO00o/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-static {v0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyISO;->OooO00o(Ljava/lang/String;Lcom/android/camera/data/data/ComponentDataItem;)Z

    move-result p1

    return p1
.end method
