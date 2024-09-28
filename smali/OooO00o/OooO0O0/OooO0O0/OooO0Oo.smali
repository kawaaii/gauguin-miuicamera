.class public final synthetic LOooO00o/OooO0O0/OooO0O0/OooO0Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera2/MiCamera2;

.field private final synthetic OooO0O0:Z

.field private final synthetic OooO0OO:Ljava/util/List;

.field private final synthetic OooO0Oo:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera2/MiCamera2;ZLjava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0O0/OooO0Oo;->OooO00o:Lcom/android/camera2/MiCamera2;

    iput-boolean p2, p0, LOooO00o/OooO0O0/OooO0O0/OooO0Oo;->OooO0O0:Z

    iput-object p3, p0, LOooO00o/OooO0O0/OooO0O0/OooO0Oo;->OooO0OO:Ljava/util/List;

    iput p4, p0, LOooO00o/OooO0O0/OooO0O0/OooO0Oo;->OooO0Oo:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, LOooO00o/OooO0O0/OooO0O0/OooO0Oo;->OooO00o:Lcom/android/camera2/MiCamera2;

    iget-boolean v1, p0, LOooO00o/OooO0O0/OooO0O0/OooO0Oo;->OooO0O0:Z

    iget-object v2, p0, LOooO00o/OooO0O0/OooO0O0/OooO0Oo;->OooO0OO:Ljava/util/List;

    iget v3, p0, LOooO00o/OooO0O0/OooO0O0/OooO0Oo;->OooO0Oo:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera2/MiCamera2;->OooO00o(ZLjava/util/List;I)V

    return-void
.end method
