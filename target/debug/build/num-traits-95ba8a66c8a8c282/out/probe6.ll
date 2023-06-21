; ModuleID = 'probe6.82bbefb791082abc-cgu.0'
source_filename = "probe6.82bbefb791082abc-cgu.0"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

@alloc_a5c8b42e11fa4a516f432bbf91a43a46 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/46514218f6f31ad3a1510ecc32af47e9e486c27d\\library\\core\\src\\num\\mod.rs" }>, align 1
@alloc_f880fa122de005fadce1db024f774a40 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a5c8b42e11fa4a516f432bbf91a43a46, [16 x i8] c"K\00\00\00\00\00\00\00w\04\00\00\05\00\00\00" }>, align 8
@str.0 = internal constant [25 x i8] c"attempt to divide by zero"

; probe6::probe
; Function Attrs: uwtable
define void @_ZN6probe65probe17h3e98ee781318f0a7E() unnamed_addr #0 {
start:
  %0 = call i1 @llvm.expect.i1(i1 false, i1 false)
  br i1 %0, label %panic.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17h216509e446b2cdefE.exit"

panic.i:                                          ; preds = %start
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h7c2a9bc872d60725E(ptr align 1 @str.0, i64 25, ptr align 8 @alloc_f880fa122de005fadce1db024f774a40) #3
  unreachable

"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17h216509e446b2cdefE.exit": ; preds = %start
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #1

; core::panicking::panic
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h7c2a9bc872d60725E(ptr align 1, i64, ptr align 8) unnamed_addr #2

attributes #0 = { uwtable "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { cold noinline noreturn uwtable "target-cpu"="x86-64" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 8, !"PIC Level", i32 2}
