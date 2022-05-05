        r e s o u r c e _ v e r s i o n       /83e5f9980ea0dbbc06be0c9b166770e787e3a3a8.shader   , l o c a l _ u n v e r s i o n e d _ k e y s           0 l a s t _ v a l i d _ v e r t e x _ s o u r c e   
   
� # v e r s i o n   4 5 0 
 # d e f i n e   t e x t u r e 2 D   t e x t u r e 
 # d e f i n e   t e x t u r e 2 D L o d   t e x t u r e L o d 
 # d e f i n e   t e x t u r e 2 D G r a d   t e x t u r e G r a d 
 # l i n e   0   1 
 i n   v e c 4   i n _ p o s i t i o n ; 
 i n   v e c 3   i n _ n o r m a l ; 
 i n   v e c 3   i n _ t a n g e n t ; 
 i n   v e c 3   i n _ b i t a n g e n t ; 
 i n   v e c 4   i n _ c o l o r 0 ; 
 i n   v e c 2   i n _ u v 0 ; 
 i n   v e c 2   i n _ u v 1 ; 
 i n   v e c 2   i n _ u v 2 ; 
 i n   v e c 2   i n _ u v 3 ; 
 i n   v e c 2   i n _ u v 4 ; 
 i n   v e c 2   i n _ u v 5 ; 
 i n   v e c 2   i n _ u v 6 ; 
 i n   v e c 2   i n _ u v 7 ; 
 
 / / :   p a r a m   a u t o   i s _ 2 d _ v i e w 
 u n i f o r m   b o o l   i s T e x t u r e V i e w ; 
 
 / / :   p a r a m   a u t o   m v p _ m a t r i x 
 u n i f o r m   m a t 4   m v p _ m a t r i x ; 
 
 / / :   p a r a m   a u t o   s u b _ p i x e l _ o f f s e t 
 u n i f o r m   v e c 2   p i x e l _ o f f s e t ; 
 
 # d e f i n e 	 V E R T E X _ S H A D E R 
 
 # i f   ! d e f i n e d ( C U S T O M _ C O M P U T E _ V E R T E X _ P O S I T I O N ) 
 v e c 4   c o m p u t e V e r t e x P o s i t i o n ( )   { 
 	 r e t u r n   m v p _ m a t r i x   *   i n _ p o s i t i o n ; 
 } 
 # e n d i f 
 
 o u t   v e c 3   v a r _ n o r m a l ; 
 o u t   v e c 3   v a r _ t a n g e n t ; 
 o u t   v e c 3   v a r _ b i t a n g e n t ; 
 o u t   v e c 3   v a r _ p o s i t i o n ; 
 o u t   v e c 4   v a r _ c o l o r [ 1 ] ; 
 o u t   v e c 2   v a r _ t e x _ c o o r d [ 8 ] ; 
 
 v o i d   m a i n ( v o i d )   { 
 	 v a r _ n o r m a l   =   i n _ n o r m a l ; 
 	 v a r _ t a n g e n t   =   i n _ t a n g e n t ; 
 	 v a r _ b i t a n g e n t   =   i n _ b i t a n g e n t ; 
 	 v a r _ p o s i t i o n   =   i n _ p o s i t i o n . x y z ; 
 	 v a r _ c o l o r [ 0 ]   =   i n _ c o l o r 0 ; 
 	 v a r _ t e x _ c o o r d [ 0 ]   =   i n _ u v 0 ; 
 	 v a r _ t e x _ c o o r d [ 1 ]   =   i n _ u v 1 ; 
 	 v a r _ t e x _ c o o r d [ 2 ]   =   i n _ u v 2 ; 
 	 v a r _ t e x _ c o o r d [ 3 ]   =   i n _ u v 3 ; 
 	 v a r _ t e x _ c o o r d [ 4 ]   =   i n _ u v 4 ; 
 	 v a r _ t e x _ c o o r d [ 5 ]   =   i n _ u v 5 ; 
 	 v a r _ t e x _ c o o r d [ 6 ]   =   i n _ u v 6 ; 
 	 v a r _ t e x _ c o o r d [ 7 ]   =   i n _ u v 7 ; 
 	 i f   ( i s T e x t u r e V i e w )   { 
 	 	 g l _ P o s i t i o n   =   m v p _ m a t r i x   *   v e c 4 ( i n _ u v 0 ,   0 ,   1 ) ; 
 	 }   e l s e   { 
 	 	 g l _ P o s i t i o n   =   c o m p u t e V e r t e x P o s i t i o n ( ) ; 
 	 	 g l _ P o s i t i o n . x y   + =   g l _ P o s i t i o n . w   *   p i x e l _ o f f s e t ; 
 	 } 
 } 
 # l i n e   2   0 
   4 l a s t _ v a l i d _ f r a g m e n t _ s o u r c e   
  1� # v e r s i o n   4 5 0 
 # d e f i n e   t e x t u r e 2 D   t e x t u r e 
 # d e f i n e   t e x t u r e 2 D L o d   t e x t u r e L o d 
 # d e f i n e   t e x t u r e 2 D G r a d   t e x t u r e G r a d 
 
 # d e f i n e   F E A T U R E _ B I N D L E S S _ T E X T U R E 
 # d e f i n e   F E A T U R E _ S P A R S E _ T E X T U R E 
 
 
 # l i n e   0   1 
 # i f d e f   F E A T U R E _ B I N D L E S S _ T E X T U R E 
 # e x t e n s i o n   G L _ A R B _ b i n d l e s s _ t e x t u r e   :   r e q u i r e 
 l a y o u t   ( b i n d l e s s _ s a m p l e r )   u n i f o r m ; 
 # e n d i f 
 
 # i f   _ _ V E R S I O N _ _   <   4 0 0 
 # e x t e n s i o n   G L _ A R B _ t e x t u r e _ q u e r y _ l o d   :   e n a b l e 
 # d e f i n e   t e x t u r e Q u e r y L o d ( S A M P L E R ,   P )   t e x t u r e Q u e r y L O D ( ( S A M P L E R ) ,   ( P ) ) 
 # e n d i f 
 # l i n e   7   0 
 
 # d e f i n e   O P T I M I Z E _ S S S _ C O E F F I C I E N T S _ O U T 
 
 # l i n e   0   2 
 / / -   s h a d e r - c o m m o n . f r a g . g l s l 
 / / -   = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` f i l l V 2 F ` 
 / / -   ` f i l l D e f a u l t O u t p u t s ` 
 / / - 
 / / -   * * P u b l i c   S t r u c t u r e s : * * 
 / / -   ` V 2 F ` 
 / / -   ` O u t p u t s ` 
 
 # l i n e   0   3 
 / / -   l i b - s p a r s e . g l s l 
 / / -   = = = = = = = = = = = = = = = 
 / / - 
 / / -   T h i s   f i l e   p r o v i d e s   u s e f u l   f u n c t i o n s   t o   e n s u r e   s p a r s e   t e x t u r e s   s a m p l i n g 
 / / -   c o r r e c t n e s s   ( A R B _ s p a r s e _ t e x t u r e ) . 
 / / -   A l l o w s   t o   s a m p l e   o n l y   p a r t   o f   t e x t u r e s   r e a l l y   p r e s e n t   i n   v i d e o   m e m o r y . 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` g e t S p a r s e C o o r d ` 
 / / -   ` t e x t u r e S p a r s e Q u e r y L o d ` 
 / / -   ` t e x t u r e S p a r s e ` 
 / / - 
 / / -   * * P u b l i c   S t r u c t u r e s : * * 
 / / -   ` S a m p l e r S p a r s e ` 
 / / -   ` S p a r s e C o o r d ` 
 / / - 
 / / -   T h e   ` F E A T U R E _ S P A R S E _ T E X T U R E `   m a c r o   i s   d e f i n e d   o n l y   i f   t h e   s p a r s e   v i r t u a l   t e x t u r e   e x t e n s i o n   i s   e n a b l e d . 
 / / - 
 / / -   I f   e n a b l e d ,   p r o c e s s   a d d i t i o n a l   t e x t u r e   l o o k u p   c h e c k s   t o   c l i m b   u p   m i p m a p   p y r a m i d   i f   t e x e l s   a r e   m i s s i n g . 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
 / / :   p a r a m   a u t o   m a t e r i a l _ l o d _ c h e c k _ n e e d e d 
 u n i f o r m   b o o l   m a t e r i a l _ l o d _ c h e c k _ n e e d e d   =   f a l s e ; 
 / / :   p a r a m   a u t o   m a t e r i a l _ l o d _ m a s k 
 u n i f o r m   u s a m p l e r 2 D   m a t e r i a l _ l o d _ m a s k ; 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
 
 / / -   S a m p l e r   a n d   s p a r s e   t e x t u r e   i n f o r m a t i o n   s t r u c t u r e 
 / / - 
 / / -   U s e d   t o   q u e r y   a l l   s a m p l e r   r e l a t e d   u n i f o r m s   w i t h   a   s i n g l e   a u t o   b i n d i n g 
 s t r u c t   S a m p l e r S p a r s e   { 
     s a m p l e r 2 D   t e x ; 
     v e c 4   s i z e ;   / /   w i d t h ,   h e i g h t ,   1 / w i d t h ,   1 / h e i g h t 
     b o o l   i s _ s e t ;   / /   a   b o o l e a n   i n d i c a t i n g   w h e t h e r   t h e   t e x t u r e   i s   i n   t h e   t e x t u r e   s e t   o r   n o t 
     u v e c 3   l o d _ m a s k _ s e l e c t ;   / /   m a s k i n g   o p e r a t i o n s   d e s c r i p t i o n   a l l o w i n g   t o   r e t r i e v e   l o a d e d   m i p m a p s   i n f o r m a t i o n 
 } ; 
 
 / / -   S p a r s e   s a m p l i n g   c o o r d i n a t e s 
 / / - 
 / / -   S t o r e   t h e   U V   c o o r d i n a t e s   &   m a t e r i a l - w i s e   s p a r s e   L o D   m a s k 
 s t r u c t   S p a r s e C o o r d   { 
     v e c 2   t e x _ c o o r d ; 
     u i n t   m a t e r i a l _ l o d _ m a s k ; 
 } ; 
 
 / / -   [ D O C - O F F ]   H a s   t o   b e   h i d d e n   f r o m   e n d - u s e r s . 
 
 u i n t   g e t T e x t u r e L o d M a s k ( u v e c 3   l o d M a s k S e l e c t ,   u i n t   m a t e r i a l L o d M a s k )   { 
     m a t e r i a l L o d M a s k   > > =   l o d M a s k S e l e c t . x ; 
     m a t e r i a l L o d M a s k   & =   l o d M a s k S e l e c t . y ; 
     m a t e r i a l L o d M a s k   | =   l o d M a s k S e l e c t . z ; 
     r e t u r n   m a t e r i a l L o d M a s k ; 
 } 
 
 f l o a t   g e t F i x e d S p a r s e L o d ( u i n t   l o d M a s k ,   f l o a t   r e q u e s t e d L o d )   { 
     r e q u e s t e d L o d   =   m a x ( r e q u e s t e d L o d , 0 . 0 ) ; 
     u i n t   r e q u e s t e d M a s k   =   ( 1 u < < u i n t ( r e q u e s t e d L o d ) )   |   ( 1 u < < u i n t ( c e i l ( r e q u e s t e d L o d ) ) ) ; 
     i f   ( ( r e q u e s t e d M a s k & l o d M a s k ) ! = r e q u e s t e d M a s k )   { 
         / /   I f   t h e   r e q u e s t e d   l e v e l s   a r e   n o t   l o a d e d ;   r e t u r n   t h e   f i r s t   a v a i l a b l e 
         l o d M a s k   & =   ~ ( l o d M a s k - 1 u ) ; 
         r e q u e s t e d L o d   =   l o g 2 ( f l o a t ( m a x ( l o d M a s k , 1 u ) ) ) ; 
     } 
     r e t u r n   r e q u e s t e d L o d ; 
 } 
 
 / / -   [ D O C - O N ] 
 
 / / -   B u i l d   t e x t u r e   c o o r d i n a t e s   s t r u c t u r e   u s e d   b y   ` t e x t u r e S p a r s e ( ) `   s a m p l i n g   f u n c t i o n 
 / / - 
 / / -   E x a m p l e :   ` S p a r s e C o o r d   u v 1 c o o r d   =   g e t S p a r s e C o o r d ( i n p u t s . m u l t i _ t e x _ c o o r d [ 1 ] ) ; ` 
 S p a r s e C o o r d   g e t S p a r s e C o o r d ( v e c 2   t e x _ c o o r d )   { 
     S p a r s e C o o r d   r e s ; 
     r e s . t e x _ c o o r d   =   t e x _ c o o r d ; 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e s . m a t e r i a l _ l o d _ m a s k   =   m a t e r i a l _ l o d _ c h e c k _ n e e d e d   ? 
         t e x t u r e L o d ( m a t e r i a l _ l o d _ m a s k , t e x _ c o o r d , 0 . 0 ) . r   : 
         0 u ; 
 # e l s e   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e s . m a t e r i a l _ l o d _ m a s k   =   0 u ; 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e t u r n   r e s ; 
 } 
 
 / / -   C o m p u t e   t h e   l e v e l - o f - d e t a i l   t h a t   w o u l d   b e   u s e d   t o   s a m p l e   f r o m   a   s p a r s e   t e x t u r e 
 / / - 
 / / -   C l i m b   u p   m i p m a p   p y r a m i d   i f   t e x e l s   a r e   m i s s i n g 
 f l o a t   t e x t u r e S p a r s e Q u e r y L o d ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d )   { 
     f l o a t   r e q u e s t e d L e v e l   =   t e x t u r e Q u e r y L o d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d ) . y ; 
 # i f d e f   F E A T U R E _ S P A R S E _ T E X T U R E 
     i f   ( m a t e r i a l _ l o d _ c h e c k _ n e e d e d )   { 
         r e t u r n   g e t F i x e d S p a r s e L o d ( g e t T e x t u r e L o d M a s k ( s a m p l e r . l o d _ m a s k _ s e l e c t ,   c o o r d . m a t e r i a l _ l o d _ m a s k ) ,   r e q u e s t e d L e v e l ) ; 
     } 
 # e n d i f   / /   F E A T U R E _ S P A R S E _ T E X T U R E 
     r e t u r n   r e q u e s t e d L e v e l ; 
 } 
 
 / / -   P e r f o r m s   a   t e x t u r e   l o o k u p   o n   a   s p a r s e   t e x t u r e ,   g o   u p   t h e   m i p m a p   l e v e l s   i f   n e c e s s a r y 
 / / - 
 / / -   T h i s   f u n c t i o n   r e p l a c e s   t h e   s t a n d a r d   ` t e x t u r e ( s a m p l e r 2 D ,   v e c 2 ) `   t o   r e t r i e v e   t e x e l s   f r o m   a   s p a r s e   t e x t u r e 
 v e c 4   t e x t u r e S p a r s e ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d )   { 
     r e t u r n   t e x t u r e L o d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d ,   t e x t u r e S p a r s e Q u e r y L o d ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   G i v e n   a   t e x t u r e ,   p e r f o r m s   a n   o p t i m i z e d   m u l t i p l e   t e x t u r e   l o o k u p s   w i t h   s m a l l   o f f s e t s 
 / / - 
 / / -   W e   a r e   p r o v i d i n g   a l t e r n a t i v e s   v e r s i o n s   o f   t h i s   h e l p e r   f o r   u p   t o   N = 4 
 
 / / -   [ D O C - O F F ] 
 / *   P r o v i d e   a   f a k e d   d o c u m e n t a t i o n   t o   b e   m o r e   r e a d a b l e   f o r   t h e   u s e r 
 / / -   [ D O C - O N ] 
 v o i d   t e x t u r e S p a r s e O f f s e t s ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ,   v e c 2   o f f s e t s [ N ] ,   o u t   v e c 4   r e s u l t s [ N ] )   { 
     f l o a t   l o d   =   t e x t u r e S p a r s e Q u e r y L o d ( s a m p l e r ,   c o o r d ) ; 
     f o r ( i n t   i   =   0 ;   i   <   N ;   + + i )   { 
         r e s u l t s [ i ]   =   t e x t u r e L o d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d   +   o f f s e t s [ i ] ,   l o d ) ; 
     } 
 } 
 / / -   [ D O C - O F F ] 
 * / 
 
 # d e f i n e   T E X T U R E _ S P A R S E _ O F F S E T S _ D E F ( N )   \ 
     v o i d   t e x t u r e S p a r s e O f f s e t s ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ,   v e c 2   o f f s e t s [ N ] ,   o u t   v e c 4   r e s u l t s [ N ] )   {   \ 
         f l o a t   l o d   =   t e x t u r e S p a r s e Q u e r y L o d ( s a m p l e r ,   c o o r d ) ;   \ 
         f o r ( i n t   i   =   0 ;   i   <   N ;   + + i )   {   \ 
             r e s u l t s [ i ]   =   t e x t u r e L o d ( s a m p l e r . t e x ,   c o o r d . t e x _ c o o r d   +   o f f s e t s [ i ] ,   l o d ) ;   \ 
         }   \ 
     } 
 T E X T U R E _ S P A R S E _ O F F S E T S _ D E F ( 1 ) 
 T E X T U R E _ S P A R S E _ O F F S E T S _ D E F ( 2 ) 
 T E X T U R E _ S P A R S E _ O F F S E T S _ D E F ( 3 ) 
 T E X T U R E _ S P A R S E _ O F F S E T S _ D E F ( 4 ) 
 # u n d e f   T E X T U R E _ S P A R S E _ O F F S E T S _ D E F 
 / / -   [ D O C - O N ] 
 # l i n e   1 2   2 
 
 / / -   D e t e r m i n e   i f   w e   r e c o m p u t e   t h e   t a n g e n t   f r a m e   p e r   p i x e l . 
 / / :   p a r a m   a u t o   p e r _ f r a g _ b i n o r m a l 
 u n i f o r m   b o o l   p e r F r a g B i n o r m a l ; 
 
 i n   v e c 3   v a r _ n o r m a l ; 
 i n   v e c 3   v a r _ t a n g e n t ; 
 i n   v e c 3   v a r _ b i t a n g e n t ; 
 i n   v e c 3   v a r _ p o s i t i o n ; 
 i n   v e c 4   v a r _ c o l o r [ 1 ] ; 
 i n   v e c 2   v a r _ t e x _ c o o r d [ 8 ] ; 
 
 / / -   V 2 F   s t r u c t u r e   d e f i n i t i o n 
 s t r u c t   V 2 F   { 
     v e c 3   n o r m a l ; 
     v e c 3   t a n g e n t ; 
     v e c 3   b i t a n g e n t ; 
     v e c 3   p o s i t i o n ; 
     v e c 4   c o l o r [ 1 ] ; 
     v e c 2   t e x _ c o o r d ; 
     S p a r s e C o o r d   s p a r s e _ c o o r d ; 
     v e c 2   m u l t i _ t e x _ c o o r d [ 8 ] ; 
 } ; 
 
 / / -   F i l l   V 2 F   s t r u c t u r e   w i t h   v a r y i n g   v a r i a b l e s 
 v o i d   f i l l V 2 F ( o u t   V 2 F   i n p u t s )   { 
 	 i n p u t s . n o r m a l   =   v a r _ n o r m a l ; 
 	 i n p u t s . t a n g e n t   =   v a r _ t a n g e n t ; 
 	 i n p u t s . b i t a n g e n t   =   v a r _ b i t a n g e n t ; 
 	 i n p u t s . p o s i t i o n   =   v a r _ p o s i t i o n ; 
 	 i n p u t s . c o l o r   =   v a r _ c o l o r ; 
 	 i n p u t s . t e x _ c o o r d   =   v a r _ t e x _ c o o r d [ 0 ] ; 
 	 i n p u t s . s p a r s e _ c o o r d   =   g e t S p a r s e C o o r d ( i n p u t s . t e x _ c o o r d ) ; 
 	 i n p u t s . m u l t i _ t e x _ c o o r d   =   v a r _ t e x _ c o o r d ; 
 
 	 / / -   R e c o m p u t e   t a n g e n t   s p a c e   t o   b e   c o m p a t i b l e   w i t h   U E 4 
 	 i f   ( p e r F r a g B i n o r m a l ) 
 	 { 
 	 	 v e c 3   p p b i t a n g e n t   =   c r o s s ( i n p u t s . n o r m a l ,   i n p u t s . t a n g e n t ) ; 
 	 	 i n p u t s . b i t a n g e n t   =   s i g n ( d o t ( i n p u t s . b i t a n g e n t ,   p p b i t a n g e n t ) )   *   p p b i t a n g e n t ; 
 	 } 
 } 
 
 / / -   U s e r   ' s h a d e '   f u n c t i o n   o u t p u t s 
 s t r u c t   O u t p u t s   { 
     f l o a t   a l p h a ; 
     v e c 3   d i f f u s e S h a d i n g ; 
     v e c 3   s p e c u l a r S h a d i n g ; 
     v e c 3   e m i s s i v e C o l o r ; 
     v e c 3   a l b e d o ; 
     v e c 4   s s s C o e f f i c i e n t s ; 
 } ; 
 
 / / -   M e c a n i s m   t o   f o r c e   d e a d   c o d e   r e m o v a l ,   n e c e s s a r y   a t   l e a s t   o n   O S X : 
 / / - 	 t h e   O u t p u t s   s t r u c t   i s   g l o b a l   a n d   f i e l d s   a r e   s e t   u s i n g   m a c r o s   . . . 
 O u t p u t s   o u t p u t s _ ; 
 
 v o i d   f i l l D e f a u l t O u t p u t s ( )   { 
 	 o u t p u t s _ . a l p h a                       =   1 . 0 ; 
 	 o u t p u t s _ . d i f f u s e S h a d i n g     =   v e c 3 ( 0 . 0 ) ; 
 	 o u t p u t s _ . s p e c u l a r S h a d i n g   =   v e c 3 ( 0 . 0 ) ; 
 	 o u t p u t s _ . e m i s s i v e C o l o r       =   v e c 3 ( 0 . 0 ) ; 
 	 o u t p u t s _ . a l b e d o                     =   v e c 3 ( 1 . 0 ) ; 
 	 o u t p u t s _ . s s s C o e f f i c i e n t s   =   v e c 4 ( 0 . 0 ) ; 
 } 
 
 # i f d e f   O P T I M I Z E _ A L P H A _ O U T 
 # d e f i n e   a l p h a O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   a l p h a O u t p u t ( v )   o u t p u t s _ . a l p h a   =   ( v ) 
 # e n d i f 
 
 # i f d e f   O P T I M I Z E _ D I F F U S E _ S H A D I N G _ O U T 
 # d e f i n e   d i f f u s e S h a d i n g O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   d i f f u s e S h a d i n g O u t p u t ( v )   o u t p u t s _ . d i f f u s e S h a d i n g   =   ( v ) 
 # e n d i f 
 
 # i f d e f   O P T I M I Z E _ S P E C U L A R _ S H A D I N G _ O U T 
 # d e f i n e   s p e c u l a r S h a d i n g O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   s p e c u l a r S h a d i n g O u t p u t ( v )   o u t p u t s _ . s p e c u l a r S h a d i n g   =   ( v ) 
 # e n d i f 
 
 # i f d e f   O P T I M I Z E _ E M I S S I V E _ O U T 
 # d e f i n e   e m i s s i v e C o l o r O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   e m i s s i v e C o l o r O u t p u t ( v )   o u t p u t s _ . e m i s s i v e C o l o r   =   ( v ) 
 # e n d i f 
 
 # i f d e f   O P T I M I Z E _ A L B E D O _ O U T 
 # d e f i n e   a l b e d o O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   a l b e d o O u t p u t ( v )   o u t p u t s _ . a l b e d o   =   ( v ) 
 # e n d i f 
 
 # i f d e f   O P T I M I Z E _ S S S _ C O E F F I C I E N T S _ O U T 
 # d e f i n e   s s s C o e f f i c i e n t s O u t p u t ( v ) 
 # e l s e 
 # d e f i n e   s s s C o e f f i c i e n t s O u t p u t ( v )   o u t p u t s _ . s s s C o e f f i c i e n t s   =   ( v ) 
 # e n d i f 
 # l i n e   1 1   0 
 # l i n e   1 2   0 
 # l i n e   0   4 
 / / -   A l l e g o r i t h m i c   u t i l i t y   f u n c t i o n s 
 / / -   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / / - 
 / / -   T o n e   m a p p i n g 
 / / -   - - - - - - - - - - - - 
 / / -   T h e s e   a r e   e x a m p l e s   o f   t o n e   m a p p i n g   y o u   c a n   u s e   i n   y o u r   s h a d e r .   P a i n t e r   d o e s n ' t   a p p l y   a n y 
 / / -   t o n e   m a p p i n g   e x c e p t   t h e   o p t i o n a l   o n e   a p p l i e d   b y   Y e b i s .   I f   y o u   d e c i d e   t o   d o   s o m e   t o n e   m a p p i n g 
 / / -   i n   y o u r   s h a d e r ,   i t   w i l l   b e   a p p l i e d   b e f o r e   Y e b i s   t o n e   m a p p i n g . 
 / / - 
 / / -   P e r f o r m   t h e   S - c u r v e   t o n e   m a p p i n g   b a s e d   o n   t h e   p a r a m e t e r s   s i g m a   a n d   n . 
 v e c 3   t o n e m a p S C u r v e ( v e c 3   v a l u e ,   f l o a t   s i g m a ,   f l o a t   n ) 
 { 
     v e c 3   p o w _ v a l u e   =   p o w ( v a l u e ,   v e c 3 ( n ) ) ; 
     r e t u r n   p o w _ v a l u e   /   ( p o w _ v a l u e   +   p o w ( s i g m a ,   n ) ) ; 
 } 
 
 / / -   s R G B   c o n v e r s i o n s 
 / / -   - - - - - - - - - - - - - - - - 
 / / -   T h e s e   a r e   t h e   c o n v e r s i o n s   u s e d   i n   P a i n t e r .   Y o u   c a n   o v e r r i d e   t h e   a u t o m a t i c   l i n e a r   - >   s R G B 
 / / -   c o n v e r s i o n   i n   t h e   v i e w p o r t   b y   p u t t i n g   t h i s   l i n e   i n   y o u r   c u s t o m   s h a d e r : 
 / / - 
 / / -   ` # d e f i n e   D I S A B L E _ F R A M E B U F F E R _ S R G B _ C O N V E R S I O N ` 
 / / - 
 / / -   a n d   d o i n g   y o u r   o w n   c u s t o m   c o n v e r s i o n . 
 / / - 
 / / -   s R G B   t o   l i n e a r   c o l o r   c o n v e r s i o n .   S c a l a r   v e r s i o n . 
 f l o a t   s R G B 2 l i n e a r ( f l o a t   x ) 
 { 
     r e t u r n   x   < =   0 . 0 4 0 4 5   ? 
         x   *   0 . 0 7 7 3 9 9 3 8 0 8   :   / /   1 . 0 / 1 2 . 9 2 
         p o w ( ( x   +   0 . 0 5 5 )   /   1 . 0 5 5 ,   2 . 4 ) ; 
 } 
 
 / / -   s R G B   t o   l i n e a r   c o l o r   c o n v e r s i o n .   R G B   v e r s i o n . 
 v e c 3   s R G B 2 l i n e a r ( v e c 3   r g b ) 
 { 
     r e t u r n   v e c 3 ( 
         s R G B 2 l i n e a r ( r g b . r ) , 
         s R G B 2 l i n e a r ( r g b . g ) , 
         s R G B 2 l i n e a r ( r g b . b ) ) ; 
 } 
 
 / / -   s R G B   t o   l i n e a r   c o l o r   c o n v e r s i o n .   R G B   +   A l p h a   v e r s i o n . 
 v e c 4   s R G B 2 l i n e a r ( v e c 4   r g b a ) 
 { 
     r e t u r n   v e c 4 ( s R G B 2 l i n e a r ( r g b a . r g b ) ,   r g b a . a ) ; 
 } 
 
 / / -   L i n e a r   t o   s R G B   c o l o r   c o n v e r s i o n .   S c a l a r   v e r s i o n . 
 f l o a t   l i n e a r 2 s R G B ( f l o a t   x ) 
 { 
     r e t u r n   x   < =   0 . 0 0 3 1 3 0 8   ? 
             1 2 . 9 2   *   x   : 
             1 . 0 5 5   *   p o w ( x ,   0 . 4 1 6 6 6 )   -   0 . 0 5 5 ; 
 } 
 
 / / -   L i n e a r   t o   s R G B   c o l o r   c o n v e r s i o n .   R G B   v e r s i o n . 
 v e c 3   l i n e a r 2 s R G B ( v e c 3   r g b ) 
 { 
     r e t u r n   v e c 3 ( 
             l i n e a r 2 s R G B ( r g b . r ) , 
             l i n e a r 2 s R G B ( r g b . g ) , 
             l i n e a r 2 s R G B ( r g b . b ) ) ; 
 } 
 
 / / -   L i n e a r   t o   s R G B   c o l o r   c o n v e r s i o n .   R G B   +   A l p h a   v e r s i o n . 
 v e c 4   l i n e a r 2 s R G B ( v e c 4   r g b a ) 
 { 
     r e t u r n   v e c 4 ( l i n e a r 2 s R G B ( r g b a . r g b ) ,   r g b a . a ) ; 
 } 
 
 / / -   L i n e a r   t o   s R G B   c o l o r   c o n v e r s i o n   o p t i o n a l .   S c a l a r   v e r s i o n . 
 / / :   p a r a m   a u t o   c o n v e r s i o n _ l i n e a r _ t o _ s r g b 
 u n i f o r m   b o o l   c o n v e r t _ t o _ s r g b _ o p t ; 
 f l o a t   l i n e a r 2 s R G B O p t ( f l o a t   x ) 
 { 
     r e t u r n   c o n v e r t _ t o _ s r g b _ o p t   ?   l i n e a r 2 s R G B ( x )   :   x ; 
 } 
 
 / / -   L i n e a r   t o   s R G B   c o l o r   c o n v e r s i o n   o p t i o n a l .   R G B   v e r s i o n . 
 v e c 3   l i n e a r 2 s R G B O p t ( v e c 3   r g b ) 
 { 
     r e t u r n   c o n v e r t _ t o _ s r g b _ o p t   ?   l i n e a r 2 s R G B ( r g b )   :   r g b ; 
 } 
 
 / / -   L i n e a r   t o   s R G B   c o l o r   c o n v e r s i o n   o p t i o n a l .   R G B   +   A l p h a   v e r s i o n . 
 v e c 4   l i n e a r 2 s R G B O p t ( v e c 4   r g b a ) 
 { 
     r e t u r n   c o n v e r t _ t o _ s r g b _ o p t   ?   l i n e a r 2 s R G B ( r g b a )   :   r g b a ; 
 } 
 
 / / -   C o l o r   c o n v e r s i o n .   S c a l a r   v e r s i o n . 
 u n i f o r m   i n t   o u t p u t _ c o n v e r s i o n _ m e t h o d ; 
 f l o a t   c o n v e r t O u t p u t ( f l o a t   x ) 
 { 
 	 i f   ( o u t p u t _ c o n v e r s i o n _ m e t h o d   = =   0 )   r e t u r n   x ; 
 	 e l s e   i f   ( o u t p u t _ c o n v e r s i o n _ m e t h o d   = =   1 )   r e t u r n   l i n e a r 2 s R G B ( x ) ; 
 	 e l s e   r e t u r n   s R G B 2 l i n e a r ( x ) ; 
 } 
 
 / / -   C o l o r   c o n v e r s i o n .   R G B   v e r s i o n . 
 v e c 3   c o n v e r t O u t p u t ( v e c 3   r g b ) 
 { 
 	 i f   ( o u t p u t _ c o n v e r s i o n _ m e t h o d   = =   0 )   r e t u r n   r g b ; 
 	 e l s e   i f   ( o u t p u t _ c o n v e r s i o n _ m e t h o d   = =   1 )   r e t u r n   l i n e a r 2 s R G B ( r g b ) ; 
 	 e l s e   r e t u r n   s R G B 2 l i n e a r ( r g b ) ; 
 } 
 
 / / -   C o l o r   c o n v e r s i o n .   R G B   +   A l p h a   v e r s i o n . 
 v e c 4   c o n v e r t O u t p u t ( v e c 4   r g b a ) 
 { 
 	 i f   ( o u t p u t _ c o n v e r s i o n _ m e t h o d   = =   0 )   r e t u r n   r g b a ; 
 	 e l s e   i f   ( o u t p u t _ c o n v e r s i o n _ m e t h o d   = =   1 )   r e t u r n   l i n e a r 2 s R G B ( r g b a ) ; 
 	 e l s e   r e t u r n   s R G B 2 l i n e a r ( r g b a ) ; 
 } 
 
 / / -   D i t h e r i n g 
 / / -   - - - - - - - - - 
 / / -   T h e s e   a r e   s o m e   h e l p e r s   t o   a d d   d i t h e r i n g   t o   s h a d e r s . 
 / / - 
 / / -   U s e   8 x 8   B a y e r   m a t r i x   f o r   d i t h e r i n g   m o d e 
 # l i n e   0   5 
 / / -   l i b - b a y e r . g l s l 
 / / -   = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` b a y e r M a t r i x 8 ` 
 / / - 
 
 / / -   [ D O C - O F F ]   H a s   t o   b e   h i d d e n   f r o m   e n d - u s e r s . 
 u i n t   r e v e r s e B i t s ( u i n t   i )   { 
     i   =   ( i   &   0 x A A A A A A A A u )   > >   1 u   |   ( i   &   0 x 5 5 5 5 5 5 5 5 u )   < <   1 u ; 
     i   =   ( i   &   0 x C C C C C C C C u )   > >   2 u   |   ( i   &   0 x 3 3 3 3 3 3 3 3 u )   < <   2 u ; 
     i   =   ( i   &   0 x 0 0 0 0 0 0 C 0 u )   > >   6 u   |   ( i   &   0 x 0 0 0 0 0 0 0 F u )   < <   2 u ; 
     r e t u r n   i ; 
 } 
 
 u i n t   s t r i d e B i t s ( u i n t   i )   { 
     i   =   ( i   |   ( i   < <   4 u ) )   &   0 x 0 F 0 F 0 F 0 F u ; 
     i   =   ( i   |   ( i   < <   2 u ) )   &   0 x 3 3 3 3 3 3 3 3 u ; 
     i   =   ( i   |   ( i   < <   1 u ) )   &   0 x 5 5 5 5 5 5 5 5 u ; 
     r e t u r n   i ; 
 } 
 
 u i n t   i n t e r l e a v e B i t s ( u i n t   i ,   u i n t   j )   { 
     r e t u r n   s t r i d e B i t s ( i )   |   ( s t r i d e B i t s ( j )   < <   1 ) ; 
 } 
 
 u i n t   b a y e r ( u i n t   i ,   u i n t   j )   { 
     r e t u r n   r e v e r s e B i t s ( i n t e r l e a v e B i t s ( i   ^   j ,   j ) ) ; 
 } 
 / / -   [ D O C - O N ] 
 
 f l o a t   b a y e r M a t r i x 8 ( u v e c 2   c o o r d s )   { 
     r e t u r n   ( f l o a t ( b a y e r ( c o o r d s . x ,   c o o r d s . y ) )   +   0 . 5 )   /   6 4 . 0 ; 
 } 
 # l i n e   1 2 2   4 
 
 f l o a t   g e t D i t h e r T h r e s h o l d ( u v e c 2   c o o r d s ) 
 { 
     r e t u r n   b a y e r M a t r i x 8 ( c o o r d s ) ; 
 } 
 
 / / -   [ D O C - O F F ]   H a s   t o   b e   h i d d e n   f r o m   e n d - u s e r s . 
 / /   d i t h e r   a   c o l o r   p o s t   c o l o r   m a n a g e m e n t 
 v e c 4   d i t h e r P o s t C M ( v e c 4   c o l o r ) 
 { 
     f l o a t   d i t h e r   =   0 . 0 0 4   *   ( g e t D i t h e r T h r e s h o l d ( u v e c 2 ( g l _ F r a g C o o r d . x y ) )   -   0 . 5 ) ;   / /   - 1 / 5 1 2   <   d i t h e r   <   1 / 5 1 2 
     r e t u r n   v e c 4 ( c o l o r . r g b   +   v e c 3 ( d i t h e r ) ,   c o l o r . a ) ; 
 } 
 
 / /   1 . 0 / d e r i v a t i v e   o f   l i n e a r 2 s R G B   t r a n s f o r m . 
 / /   I n t u i t i v e l y   i t   a l l o w s   t o   g e t   a   k i n d   o f   a   l i n e a r   " s t e p "   b e t w e e n   t w o 
 / /   c o n s e c u t i v e   s R G B   i n t e n s i t i e s . 
 f l o a t   l i n e a r 2 s R G B I n v D e r i v ( f l o a t   x )   { 
     r e t u r n   x   < =   0 . 0 0 3 1 3 0 8   ? 
         1 . 0   /   1 2 . 9 2   : 
         ( 2 . 4   /   1 . 0 5 5 )   *   p o w ( x ,   1 . 4   /   2 . 4 ) ; 
 } 
 
 / /   d i t h e r   a   c o l o r   a f t e r   c o l o r   m a n a g e m e n t   e x c e p t   s R G B   c o n v e r s i o n   t h a t   w i l l   b e 
 / /   d o n e   l a t e r 
 v e c 4   d i t h e r P r e S R G B ( v e c 4   c o l o r ) 
 { 
     f l o a t   d i t h e r   =   0 . 0 0 4   *   ( g e t D i t h e r T h r e s h o l d ( u v e c 2 ( g l _ F r a g C o o r d . x y ) )   -   0 . 5 ) ;   / /   - 1 / 5 1 2   <   d i t h e r   <   1 / 5 1 2 
     v e c 3   d e r i v   =   v e c 3 ( 
         l i n e a r 2 s R G B I n v D e r i v ( c o l o r . r ) , 
         l i n e a r 2 s R G B I n v D e r i v ( c o l o r . g ) , 
         l i n e a r 2 s R G B I n v D e r i v ( c o l o r . b ) ) ; 
     r e t u r n   v e c 4 ( c o l o r . r g b   +   d i t h e r   *   d e r i v ,   c o l o r . a ) ; 
 } 
 / / -   [ D O C - O N ] 
 
 v e c 4   R G B 2 G r a y ( v e c 4   r g b a ) 
 { 
     f l o a t   g r a y   =   0 . 2 9 9   *   r g b a . r   +   0 . 5 8 7   *   r g b a . g   +   0 . 1 1 4   *   r g b a . b ; 
     r e t u r n   v e c 4 ( v e c 3 ( g r a y ) ,   r g b a . a ) ; 
 } 
 
 / / -   R e m o v e   A O   a n d   s h a d o w s   o n   g l o s s y   m e t a l l i c   s u r f a c e s   ( c l o s e   t o   m i r r o r s ) 
 f l o a t   s p e c u l a r O c c l u s i o n C o r r e c t i o n ( f l o a t   d i f f u s e O c c l u s i o n ,   f l o a t   m e t a l l i c ,   f l o a t   r o u g h n e s s ) 
 { 
     r e t u r n   m i x ( d i f f u s e O c c l u s i o n ,   1 . 0 ,   m e t a l l i c   *   ( 1 . 0   -   r o u g h n e s s )   *   ( 1 . 0   -   r o u g h n e s s ) ) ; 
 } 
 # l i n e   1 3   0 
 c o n s t   v e c 4   Q U I C K _ M A S K _ C O L O R   =   v e c 4 ( 0 . 0 ,   0 . 0 ,   0 . 0 ,   1 . 0 ) ; 
 
 / / :   p a r a m   a u t o   s e l e c t i o n _ e n a b l e 
 u n i f o r m   b o o l   a l g _ h a s _ s e l e c t i o n ; 
 / / :   p a r a m   a u t o   s e l e c t i o n _ e d i t e d 
 u n i f o r m   b o o l   a l g _ s e l e c t i o n _ i s _ e d i t e d ; 
 / / :   p a r a m   a u t o   t e x t u r e _ s e l e c t i o n 
 u n i f o r m   s a m p l e r 2 D   a l g _ s e l e c t i o n _ t e x ; 
 / / :   p a r a m   a u t o   d i t h e r 
 u n i f o r m   b o o l   a l g _ d i t h e r ; 
 / /   A l p h a   t e s t   e m u l a t i o n 
 u n i f o r m   b o o l   a l g _ a l p h a _ t e s t   =   f a l s e ; 
 
 o u t   v e c 4   o c o l o r 0 ; 
 
 # l i n e   0   6 
 / / - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 / /   C o p y r i g h t   ( c )   2 0 1 7   S n a p   I n c . 
 / / - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 
 / / -   I m p o r t   f r o m   l i b r a r i e s . 
 # l i n e   0   7 
 / / -   l i b - p b r . g l s l 
 / / -   = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` n o r m a l _ d i s t r i b ` 
 / / -   ` f r e s n e l ` 
 / / -   ` G 1 ` 
 / / -   ` v i s i b i l i t y ` 
 / / -   ` h o r i z o n F a d i n g ` 
 / / -   ` p b r C o m p u t e D i f f u s e ` 
 / / -   ` p b r C o m p u t e S p e c u l a r ` 
 / / -   ` p b r C o m p u t e B R D F ` 
 / / - 
 / / - 
 / / -   N u m b e r   o f   m i p l e v e l s   i n   t h e   e n v m a p . 
 / / :   p a r a m   a u t o   e n v i r o n m e n t _ m a x _ l o d 
 u n i f o r m   f l o a t   m a x L o d ; 
 
 / / -   A n   i n t   r e p r e s e n t i n g   t h e   n u m b e r   o f   s a m p l e s   m a d e   f o r   s p e c u l a r   c o n t r i b u t i o n 
 / / -   c o m p u t a t i o n .   T h e   m o r e   t h e   h i g h e r   q u a l i t y   a n d   t h e   p e r f o r m a n c e   i m p a c t . 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   1 6 , 
 / / :       " l a b e l " :   " Q u a l i t y " , 
 / / :       " w i d g e t " :   " c o m b o b o x " , 
 / / :       " v a l u e s " :   { 
 / / :           " V e r y   l o w   ( 4   s p p ) " :   4 , 
 / / :           " L o w   ( 1 6   s p p ) " :   1 6 , 
 / / :           " M e d i u m   ( 3 2   s p p ) " :   3 2 , 
 / / :           " H i g h   ( 6 4   s p p ) " :   6 4 , 
 / / :           " V e r y   h i g h   ( 1 2 8   s p p ) " :   1 2 8 , 
 / / :           " U l t r a   ( 2 5 6   s p p ) " :   2 5 6 
 / / :       } , 
 / / :       " g r o u p " :   " C o m m o n   P a r a m e t e r s " 
 / / :   } 
 u n i f o r m   i n t   n b S a m p l e s ; 
 
 / / -   V a l u e   u s e d   t o   c o n t r o l   s p e c u l a r   r e f l e c t i o n   l e a k i n g   t h r o u g h   t h e   s u r f a c e . 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   1 . 3 , 
 / / :       " l a b e l " :   " H o r i z o n   F a d i n g " , 
 / / :       " m i n " :   0 . 0 , 
 / / :       " m a x " :   2 . 0 , 
 / / :       " g r o u p " :   " C o m m o n   P a r a m e t e r s " 
 / / :   } 
 u n i f o r m   f l o a t   h o r i z o n F a d e ; 
 
 / / -   I m p o r t   f r o m   l i b r a r y ,   o t h e r   p a r a m e t e r s 
 # l i n e   0   8 
 / / -   l i b - e n v . g l s l 
 / / -   = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` e n v S a m p l e L O D ` 
 / / -   ` e n v I r r a d i a n c e ` 
 / / - 
 / / -   N e e d e d   f o r   m a t h   c o n s t a n t s 
 # l i n e   0   9 
 / / -   l i b - d e f i n e s . g l s l 
 / / -   = = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   C o n s t a n t s : * * 
 / / -   ` M _ P I ` 
 / / -   ` M _ 2 P I ` 
 / / -   ` M _ I N V _ P I ` 
 / / -   ` M _ I N V _ L O G 2 ` 
 / / -   ` M _ G O L D E N _ R A T I O ` 
 / / - 
 / / -   S o m e   u s e f u l   c o n s t a n t s 
 c o n s t   f l o a t   M _ P I   =   3 . 1 4 1 5 9 2 6 5 ; 
 c o n s t   f l o a t   M _ 2 P I   =   2 . 0   *   M _ P I ; 
 c o n s t   f l o a t   M _ I N V _ P I   =   0 . 3 1 8 3 0 9 8 8 ; 
 c o n s t   f l o a t   M _ I N V _ L O G 2   =   1 . 4 4 2 6 9 5 ; 
 c o n s t   f l o a t   M _ G O L D E N _ R A T I O   =   1 . 6 1 8 0 3 4 ; 
 
 / / -   B l e n d i n g   m o d e s   c o n s t a n t s 
 c o n s t   i n t   B l e n d i n g M o d e _ D i s a b l e                         =     0 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ R e p l a c e                         =     1 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ N o r m a l                           =     2 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ D a r k e n                           =     3 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ M u l t i p l y                       =     4 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ C o l o r B u r n                     =     5 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ L i n e a r B u r n                   =     6 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ L i g h t e n                         =     7 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ S c r e e n                           =     8 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ C o l o r D o d g e                   =     9 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ L i n e a r D o d g e                 =   1 0 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ O v e r l a y                         =   1 1 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ S o f t L i g h t                     =   1 2 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ H a r d L i g h t                     =   1 3 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ V i v i d L i g h t                   =   1 4 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ L i n e a r L i g h t                 =   1 5 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ P i n L i g h t                       =   1 6 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ D i f f e r e n c e                   =   1 7 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ E x c l u s i o n                     =   1 8 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ T i n t                               =   1 9 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ S a t u r a t i o n                   =   2 0 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ C o l o r                             =   2 1 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ V a l u e                             =   2 2 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ D i v i d e                           =   2 3 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ I n v e r s e D i v i d e             =   2 4 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ P a s s t h r u                       =   2 5 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ N M _ C o m b i n e                   =   2 6 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ N M _ O r i e n t e d                 =   2 7 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ N M _ I n v e r s e O r i e n t e d   =   2 8 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ S u b t r a c t                       =   2 9 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ I n v e r s e S u b t r a c t         =   3 0 ; 
 c o n s t   i n t   B l e n d i n g M o d e _ A d d S u b                           =   3 1 ; 
 # l i n e   9   8 
 
 / / -   E n g i n e   p r o v i d e d   p a r a m e t e r s 
 / / :   p a r a m   a u t o   t e x t u r e _ e n v i r o n m e n t 
 u n i f o r m   s a m p l e r 2 D   e n v i r o n m e n t _ t e x t u r e ; 
 / / :   p a r a m   a u t o   e n v i r o n m e n t _ r o t a t i o n 
 u n i f o r m   f l o a t   e n v i r o n m e n t _ r o t a t i o n ; 
 / / :   p a r a m   a u t o   e n v i r o n m e n t _ e x p o s u r e 
 u n i f o r m   f l o a t   e n v i r o n m e n t _ e x p o s u r e ; 
 / / :   p a r a m   a u t o   e n v i r o n m e n t _ i r r a d _ m a t _ r e d 
 u n i f o r m   m a t 4   i r r a d _ m a t _ r e d ; 
 / / :   p a r a m   a u t o   e n v i r o n m e n t _ i r r a d _ m a t _ g r e e n 
 u n i f o r m   m a t 4   i r r a d _ m a t _ g r e e n ; 
 / / :   p a r a m   a u t o   e n v i r o n m e n t _ i r r a d _ m a t _ b l u e 
 u n i f o r m   m a t 4   i r r a d _ m a t _ b l u e ; 
 
 
 / / -   H e l p e r   t h a t   a l l o w s   o n e   t o   s a m p l e   e n v i r o n m e n t .   R o t a t i o n   i s   t a k e n   i n t o 
 / / -   a c c o u n t .   T h e   e n v i r o n m e n t   m a p   i s   a   p a n o r a m i c   e n v   m a p   b e h i n d   t h e   s c e n e , 
 / / -   t h a t ' s   w h y   t h e r e   i s   e x t r a   c o m p u t a t i o n   f r o m   d i r   v e c t o r . 
 v e c 3   e n v S a m p l e L O D ( v e c 3   d i r ,   f l o a t   l o d ) 
 { 
     / /   W O R K A R O U N D :   I n t e l   G L S L   c o m p i l e r   f o r   H D 5 0 0 0   i s   b u g g e d   o n   O S X : 
     / /   h t t p s : / / b u g s . c h r o m i u m . o r g / p / c h r o m i u m / i s s u e s / d e t a i l ? i d = 3 0 8 3 6 6 
     / /   I t   i s   n e c e s s a r y   t o   r e p l a c e   a t a n ( y ,   - x )   b y   a t a n ( y ,   - 1 . 0   *   x )   t o   f o r c e 
     / /   t h e   s e c o n d   p a r a m e t e r   t o   b e   i n t e r p r e t e d   a s   a   f l o a t 
     v e c 2   p o s   =   M _ I N V _ P I   *   v e c 2 ( a t a n ( - d i r . z ,   - 1 . 0   *   d i r . x ) ,   2 . 0   *   a s i n ( d i r . y ) ) ; 
     p o s   =   0 . 5   *   p o s   +   v e c 2 ( 0 . 5 ) ; 
     p o s . x   + =   e n v i r o n m e n t _ r o t a t i o n ; 
     r e t u r n   t e x t u r e L o d ( e n v i r o n m e n t _ t e x t u r e ,   p o s ,   l o d ) . r g b   *   e n v i r o n m e n t _ e x p o s u r e ; 
 } 
 
 / / -   R e t u r n   t h e   i r r a d i a n c e   f o r   a   g i v e n   d i r e c t i o n .   T h e   c o m p u t a t i o n   i s   b a s e d   o n 
 / / -   e n v i r o n m e n t ' s   s p h e r i c a l   h a r m o n i c s   p r o j e c t i o n . 
 v e c 3   e n v I r r a d i a n c e ( v e c 3   d i r ) 
 { 
     f l o a t   r o t   =   e n v i r o n m e n t _ r o t a t i o n   *   M _ 2 P I ; 
     f l o a t   c r o t   =   c o s ( r o t ) ; 
     f l o a t   s r o t   =   s i n ( r o t ) ; 
     v e c 4   s h D i r   =   v e c 4 ( d i r . x z y ,   1 . 0 ) ; 
     s h D i r   =   v e c 4 ( 
         s h D i r . x   *   c r o t   -   s h D i r . y   *   s r o t , 
         s h D i r . x   *   s r o t   +   s h D i r . y   *   c r o t , 
         s h D i r . z , 
         1 . 0 ) ; 
     r e t u r n   m a x ( v e c 3 ( 0 . 0 ) ,   v e c 3 ( 
             d o t ( s h D i r ,   i r r a d _ m a t _ r e d   *   s h D i r ) , 
             d o t ( s h D i r ,   i r r a d _ m a t _ g r e e n   *   s h D i r ) , 
             d o t ( s h D i r ,   i r r a d _ m a t _ b l u e   *   s h D i r ) 
         ) )   *   e n v i r o n m e n t _ e x p o s u r e ; 
 } 
 # l i n e   4 8   7 
 # l i n e   0   1 0 
 / / -   l i b - e m i s s i v e . g l s l 
 / / -   = = = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` p b r C o m p u t e E m i s s i v e ` 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r y 
 # l i n e   8   1 0 
 
 / / -   T h e   e m i s s i v e   c h a n n e l   t e x t u r e . 
 / / :   p a r a m   a u t o   c h a n n e l _ e m i s s i v e 
 u n i f o r m   S a m p l e r S p a r s e   e m i s s i v e _ t e x ; 
 
 / / -   A   v a l u e   u s e d   t o   t w e a k   t h e   e m i s s i v e   i n t e n s i t y . 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   1 . 0 , 
 / / :       " l a b e l " :   " E m i s s i v e   I n t e n s i t y " , 
 / / :       " m i n " :   0 . 0 , 
 / / :       " m a x " :   1 0 0 . 0 , 
 / / :       " g r o u p " :   " C o m m o n   P a r a m e t e r s " 
 / / :   } 
 u n i f o r m   f l o a t   e m i s s i v e _ i n t e n s i t y ; 
 
 / / -   C o m p u t e   t h e   e m i s s i v e   r a d i a n c e   t o   t h e   v i e w e r ' s   e y e 
 v e c 3   p b r C o m p u t e E m i s s i v e ( S a m p l e r S p a r s e   e m i s s i v e ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   e m i s s i v e _ i n t e n s i t y   *   t e x t u r e S p a r s e ( e m i s s i v e ,   c o o r d ) . r g b ; 
 } 
 
 / / -   [ D O C - O F F ]   D e p r e c a t e d ,   k e p t   f o r   c o m p a t i b i l i t y   r e a s o n s 
 v e c 3   p b r C o m p u t e E m i s s i v e ( s a m p l e r 2 D   e m i s s i v e _ t e x ,   v e c 2   t e x _ c o o r d ) 
 { 
     r e t u r n   e m i s s i v e _ i n t e n s i t y   *   t e x t u r e ( e m i s s i v e _ t e x ,   t e x _ c o o r d ) . r g b ; 
 } 
 v e c 3   p b r C o m p u t e E m i s s i v e ( S a m p l e r S p a r s e   e m i s s i v e _ t e x ,   v e c 2   t e x _ c o o r d ) 
 { 
     r e t u r n   p b r C o m p u t e E m i s s i v e ( e m i s s i v e _ t e x . t e x ,   t e x _ c o o r d ) ; 
 } 
 / / -   [ D O C - O N ] 
 # l i n e   4 9   7 
 # l i n e   0   1 1 
 / / -   l i b - r a n d o m . g l s l 
 / / -   = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` g e t B l u e N o i s e T h r e s h o l d ` 
 / / -   ` g e t B l u e N o i s e T h r e s h o l d T e m p o r a l ` 
 / / -   ` f i b o n a c c i 1 D ` 
 / / -   ` f i b o n a c c i 2 D ` 
 / / -   ` f i b o n a c c i 2 D D i t h e r e d T e m p o r a l ` 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r y 
 # l i n e   1 2   1 1 
 
 / / -   A   2 D   b l u e   n o i s e   t e x t u r e   c o n t a i n i n g   s c a l a r   v a l u e s 
 / / :   p a r a m   a u t o   t e x t u r e _ b l u e _ n o i s e 
 u n i f o r m   s a m p l e r 2 D   t e x t u r e _ b l u e _ n o i s e ; 
 
 / / -   B l u e   n o i s e   t e x t u r e   r e s o l u t i o n 
 c o n s t   i v e c 2   t e x t u r e _ b l u e _ n o i s e _ s i z e   =   i v e c 2 ( 2 5 6 ) ; 
 
 / / -   C u r r e n t   f r a m e   r a n d o m   s e e d 
 / / :   p a r a m   a u t o   r a n d o m _ s e e d 
 u n i f o r m   i n t   a l g _ r a n d o m _ s e e d ; 
 
 / / -   G e t   a n   u n i f o r m   r a n d o m   v a l u e   b a s e d   o n   p i x e l   c o o r d i n a t e s . 
 f l o a t   g e t B l u e N o i s e T h r e s h o l d ( ) 
 { 
     r e t u r n   t e x t u r e ( t e x t u r e _ b l u e _ n o i s e ,   g l _ F r a g C o o r d . x y   /   v e c 2 ( t e x t u r e _ b l u e _ n o i s e _ s i z e ) ) . x   +   0 . 5   /   6 5 5 3 6 . 0 ; 
 } 
 
 / / -   G e t   a n   u n i f o r m   r a n d o m   v a l u e   b a s e d   o n   p i x e l   c o o r d i n a t e s   a n d   f r a m e   i d . 
 f l o a t   g e t B l u e N o i s e T h r e s h o l d T e m p o r a l ( ) 
 { 
     r e t u r n   f r a c t ( g e t B l u e N o i s e T h r e s h o l d ( )   +   M _ G O L D E N _ R A T I O   *   a l g _ r a n d o m _ s e e d ) ; 
 } 
 
 / / -   R e t u r n   t h e   i * t h *   n u m b e r   f r o m   f i b o n a c c i   s e q u e n c e . 
 f l o a t   f i b o n a c c i 1 D ( i n t   i ) 
 { 
     r e t u r n   f r a c t ( ( f l o a t ( i )   +   1 . 0 )   *   M _ G O L D E N _ R A T I O ) ; 
 } 
 
 / / -   R e t u r n   t h e   i * t h *   c o u p l e   f r o m   t h e   f i b o n a c c i   s e q u e n c e . 
 / / -   n b S a m p l e   i s   r e q u i r e d   t o   g e t   a n   u n i f o r m   d i s t r i b u t i o n . 
 v e c 2   f i b o n a c c i 2 D ( i n t   i ,   i n t   n b S a m p l e s ) 
 { 
     r e t u r n   v e c 2 ( 
         ( f l o a t ( i ) + 0 . 5 )   /   f l o a t ( n b S a m p l e s ) , 
         f i b o n a c c i 1 D ( i ) 
     ) ; 
 } 
 
 / / -   R e t u r n   t h e   i * t h *   c o u p l e   f r o m   t h e   f i b o n a c c i   s e q u e n c e . 
 / / -   n b S a m p l e   i s   r e q u i r e d   t o   g e t   a n   u n i f o r m   d i s t r i b u t i o n . 
 / / -   T h i s   v e r s i o n   h a s   a   p e r   f r a m e   a n d   p e r   p i x e l   p s e u d o - r a n d o m   r o t a t i o n   a p p l i e d . 
 v e c 2   f i b o n a c c i 2 D D i t h e r e d T e m p o r a l ( i n t   i ,   i n t   n b S a m p l e s ) 
 { 
     v e c 2   s   =   f i b o n a c c i 2 D ( i ,   n b S a m p l e s ) ; 
     s . x   + =   g e t B l u e N o i s e T h r e s h o l d T e m p o r a l ( ) ; 
     r e t u r n   s ; 
 } 
 # l i n e   5 0   7 
 # l i n e   0   1 2 
 / / -   l i b - v e c t o r s . g l s l 
 / / -   = = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` c o m p u t e L o c a l F r a m e ` 
 / / -   ` g e t E y e V e c ` 
 / / -   ` t a n g e n t S p a c e T o W o r l d S p a c e ` 
 / / -   ` w o r l d S p a c e T o T a n g e n t S p a c e ` 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r y 
 # l i n e   0   1 3 
 / / -   l i b - n o r m a l . g l s l 
 / / -   = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` n o r m a l B l e n d ` 
 / / -   ` n o r m a l B l e n d O r i e n t e d ` 
 / / -   ` n o r m a l F a d e ` 
 / / -   ` n o r m a l U n p a c k ` 
 / / -   ` n o r m a l F r o m B a s e N o r m a l ` 
 / / -   ` n o r m a l F r o m N o r m a l ` 
 / / -   ` n o r m a l F r o m H e i g h t ` 
 / / -   ` g e t T S N o r m a l ` 
 / / -   ` c o m p u t e W S B a s e N o r m a l ` 
 / / -   ` c o m p u t e W S N o r m a l ` 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r y 
 # l i n e   1 7   1 3 
 # l i n e   1 8   1 3 
 
 / / -   A l l   e n g i n e   p a r a m e t e r s   u s e f u l   f o r   n o r m a l - c e n t r i c   o p e r a t i o n s . 
 / / :   p a r a m   a u t o   c h a n n e l _ h e i g h t 
 u n i f o r m   S a m p l e r S p a r s e   h e i g h t _ t e x t u r e ; 
 / / :   p a r a m   a u t o   c h a n n e l _ n o r m a l 
 u n i f o r m   S a m p l e r S p a r s e   n o r m a l _ t e x t u r e ; 
 / / :   p a r a m   a u t o   t e x t u r e _ n o r m a l 
 u n i f o r m   S a m p l e r S p a r s e   b a s e _ n o r m a l _ t e x t u r e ; 
 / / :   p a r a m   a u t o   n o r m a l _ b l e n d i n g _ m o d e 
 u n i f o r m   i n t   n o r m a l _ b l e n d i n g _ m o d e ; 
 / / -   U s e d   t o   i n v e r t   t h e   Y   a x i s   o f   t h e   n o r m a l   m a p 
 / / :   p a r a m   a u t o   n o r m a l _ y _ c o e f f 
 u n i f o r m   f l o a t   b a s e _ n o r m a l _ y _ c o e f f ; 
 
 / / -   E m p i r i c a l l y   d e t e r m i n e d   b y   o u r   a r t i s t s . . . 
 c o n s t   f l o a t   H E I G H T _ F A C T O R   =   4 0 0 . 0 ; 
 
 / / -   P e r f o r m   t h e   b l e n d i n g   b e t w e e n   2   n o r m a l   m a p s 
 / / - 
 / / -   T h i s   i s   b a s e d   o n   W h i t e o u t   b l e n d i n g 
 / / -   h t t p : / / b l o g . s e l f s h a d o w . c o m / p u b l i c a t i o n s / b l e n d i n g - i n - d e t a i l / 
 v e c 3   n o r m a l B l e n d ( v e c 3   b a s e N o r m a l ,   v e c 3   o v e r N o r m a l ) 
 { 
     r e t u r n   n o r m a l i z e ( v e c 3 ( 
         b a s e N o r m a l . x y   +   o v e r N o r m a l . x y , 
         b a s e N o r m a l . z     *   o v e r N o r m a l . z ) ) ; 
 } 
 
 / / -   P e r f o r m   a   d e t a i l   o r i e n t e d   b l e n d i n g   b e t w e e n   2   n o r m a l   m a p s 
 / / - 
 / / -   T h i s   i s   b a s e d   o n   D e t a i l   O r i e n t e d   b l e n d i n g 
 / / -   h t t p : / / b l o g . s e l f s h a d o w . c o m / p u b l i c a t i o n s / b l e n d i n g - i n - d e t a i l / 
 v e c 3   n o r m a l B l e n d O r i e n t e d ( v e c 3   b a s e N o r m a l ,   v e c 3   o v e r N o r m a l ) 
 { 
     b a s e N o r m a l . z   + =   1 . 0 ; 
     o v e r N o r m a l . x y   =   - o v e r N o r m a l . x y ; 
     r e t u r n   n o r m a l i z e ( b a s e N o r m a l   *   d o t ( b a s e N o r m a l , o v e r N o r m a l )   - 
         o v e r N o r m a l * b a s e N o r m a l . z ) ; 
 } 
 
 / / -   R e t u r n s   a   n o r m a l   f l a t t e n e d   b y   a n   a t t e n u a t i o n   f a c t o r 
 v e c 3   n o r m a l F a d e ( v e c 3   n o r m a l , f l o a t   a t t e n u a t i o n ) 
 { 
     i f   ( a t t e n u a t i o n < 1 . 0   & &   n o r m a l . z < 1 . 0 ) 
     { 
         f l o a t   p h i   =   a t t e n u a t i o n   *   a c o s ( n o r m a l . z ) ; 
         n o r m a l . x y   * =   1 . 0 / s q r t ( 1 . 0 - n o r m a l . z * n o r m a l . z )   *   s i n ( p h i ) ; 
         n o r m a l . z   =   c o s ( p h i ) ; 
     } 
 
     r e t u r n   n o r m a l ; 
 } 
 
 / / -   U n p a c k   a   n o r m a l   w /   a l p h a   c h a n n e l 
 v e c 3   n o r m a l U n p a c k ( v e c 4   n o r m a l _ a l p h a ,   f l o a t   y _ c o e f f ) 
 { 
     i f   ( n o r m a l _ a l p h a . a   = =   0 . 0   | |   n o r m a l _ a l p h a . x y z   = =   v e c 3 ( 0 . 0 ) )   { 
         r e t u r n   v e c 3 ( 0 . 0 ,   0 . 0 ,   1 . 0 ) ; 
     } 
 
     / /   A t t e n u a t i o n   i n   f u n c t i o n   o f   a l p h a 
     v e c 3   n o r m a l   =   n o r m a l _ a l p h a . x y z / n o r m a l _ a l p h a . a   *   2 . 0   -   v e c 3 ( 1 . 0 ) ; 
     n o r m a l . y   * =   y _ c o e f f ; 
     n o r m a l . z   =   m a x ( 1 e - 3 ,   n o r m a l . z ) ; 
     n o r m a l   =   n o r m a l i z e ( n o r m a l ) ; 
     n o r m a l   =   n o r m a l F a d e ( n o r m a l ,   n o r m a l _ a l p h a . a ) ; 
 
     r e t u r n   n o r m a l ; 
 } 
 
 / / -   U n p a c k   a   n o r m a l   w /   a l p h a   c h a n n e l ,   n o   Y   i n v e r t i o n 
 v e c 3   n o r m a l U n p a c k ( v e c 4   n o r m a l _ a l p h a ) 
 { 
     r e t u r n   n o r m a l U n p a c k ( n o r m a l _ a l p h a ,   1 . 0 ) ; 
 } 
 
 / / -   C o m p u t e   t h e   t a n g e n t   s p a c e   n o r m a l   f r o m   d o c u m e n t ' s   h e i g h t   c h a n n e l 
 v e c 3   n o r m a l F r o m H e i g h t ( S p a r s e C o o r d   c o o r d ,   f l o a t   h e i g h t _ f o r c e ) 
 { 
     / /   N o r m a l   c o m p u t a t i o n   u s i n g   h e i g h t   m a p 
 
     / /   D e t e r m i n e   g r a d i e n t   o f f s e t   i n   f u n c t i o n   o f   d e r i v a t i v e s 
     v e c 2   d f d x   =   d F d x ( c o o r d . t e x _ c o o r d ) ; 
     v e c 2   d f d y   =   d F d y ( c o o r d . t e x _ c o o r d ) ; 
     v e c 2   d f d   =   m a x ( d f d x , d f d y ) ; 
     d f d   =   m a x ( d f d , h e i g h t _ t e x t u r e . s i z e . z w ) ; 
 
     f l o a t   l e v e l   =   t e x t u r e S p a r s e Q u e r y L o d ( h e i g h t _ t e x t u r e ,   c o o r d ) ; 
     f l o a t   h _ r     =   t e x t u r e L o d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 (   d f d . x ,     0         ) ,   l e v e l ) . r ; 
     f l o a t   h _ l     =   t e x t u r e L o d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 ( - d f d . x ,     0         ) ,   l e v e l ) . r ; 
     f l o a t   h _ t     =   t e x t u r e L o d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 (           0 ,     d f d . y ) ,   l e v e l ) . r ; 
     f l o a t   h _ b     =   t e x t u r e L o d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 (           0 ,   - d f d . y ) ,   l e v e l ) . r ; 
     f l o a t   h _ r t   =   t e x t u r e L o d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 (   d f d . x ,     d f d . y ) ,   l e v e l ) . r ; 
     f l o a t   h _ l t   =   t e x t u r e L o d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 ( - d f d . x ,     d f d . y ) ,   l e v e l ) . r ; 
     f l o a t   h _ r b   =   t e x t u r e L o d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 (   d f d . x ,   - d f d . y ) ,   l e v e l ) . r ; 
     f l o a t   h _ l b   =   t e x t u r e L o d ( h e i g h t _ t e x t u r e . t e x ,   c o o r d . t e x _ c o o r d + v e c 2 ( - d f d . x ,   - d f d . y ) ,   l e v e l ) . r ; 
 
     v e c 2   d h _ d u d v   =   ( 0 . 5   *   h e i g h t _ f o r c e )   /   d f d   *   v e c 2 ( 
         2 . 0 * ( h _ l - h _ r ) + h _ l t - h _ r t + h _ l b - h _ r b , 
         2 . 0 * ( h _ b - h _ t ) + h _ r b - h _ r t + h _ l b - h _ l t ) ; 
 
     r e t u r n   n o r m a l i z e ( v e c 3 ( d h _ d u d v ,   H E I G H T _ F A C T O R ) ) ; 
 } 
 
 / / -   H e l p e r   t o   c o m p u t e   t h e   t a n g e n t   s p a c e   n o r m a l   f r o m   b a s e   n o r m a l   a n d   a   h e i g h t 
 / / -   v a l u e ,   a n d   a n   o p t i o n a l   d e t a i l   n o r m a l . 
 v e c 3   g e t T S N o r m a l ( S p a r s e C o o r d   c o o r d ,   v e c 3   n o r m a l F r o m H e i g h t ) 
 { 
     v e c 3   n o r m a l   =   n o r m a l B l e n d O r i e n t e d ( 
         n o r m a l U n p a c k ( t e x t u r e S p a r s e ( b a s e _ n o r m a l _ t e x t u r e ,   c o o r d ) ,   b a s e _ n o r m a l _ y _ c o e f f ) , 
         n o r m a l F r o m H e i g h t ) ; 
 
     i f   ( n o r m a l _ t e x t u r e . i s _ s e t )   { 
         v e c 3   c h a n n e l N o r m a l   =   n o r m a l U n p a c k ( t e x t u r e S p a r s e ( n o r m a l _ t e x t u r e ,   c o o r d ) ) ; 
         i f   ( n o r m a l _ b l e n d i n g _ m o d e   = =   B l e n d i n g M o d e _ R e p l a c e )   { 
             n o r m a l   =   n o r m a l B l e n d O r i e n t e d ( n o r m a l F r o m H e i g h t ,   c h a n n e l N o r m a l ) ; 
         }   e l s e   i f   ( n o r m a l _ b l e n d i n g _ m o d e   = =   B l e n d i n g M o d e _ N M _ C o m b i n e )   { 
             n o r m a l   =   n o r m a l B l e n d O r i e n t e d ( n o r m a l ,   c h a n n e l N o r m a l ) ; 
         } 
     } 
 
     r e t u r n   n o r m a l ; 
 } 
 
 / / -   H e l p e r   t o   c o m p u t e   t h e   t a n g e n t   s p a c e   n o r m a l   f r o m   b a s e   n o r m a l   a n d   h e i g h t ,   a n d 
 / / -   a n   o p t i o n a l   d e t a i l   n o r m a l . 
 v e c 3   g e t T S N o r m a l ( S p a r s e C o o r d   c o o r d ) 
 { 
     f l o a t   h e i g h t _ f o r c e   =   1 . 0 ; 
     v e c 3   n o r m a l H   =   n o r m a l F r o m H e i g h t ( c o o r d ,   h e i g h t _ f o r c e ) ; 
     r e t u r n   g e t T S N o r m a l ( c o o r d ,   n o r m a l H ) ; 
 } 
 
 / / -   H e l p e r   t o   c o m p u t e   t h e   w o r l d   s p a c e   n o r m a l   f r o m   t a n g e n t   s p a c e   b a s e   n o r m a l . 
 v e c 3   c o m p u t e W S B a s e N o r m a l ( S p a r s e C o o r d   c o o r d ,   v e c 3   t a n g e n t ,   v e c 3   b i t a n g e n t ,   v e c 3   n o r m a l ) 
 { 
     v e c 3   n o r m a l _ v e c   =   n o r m a l U n p a c k ( t e x t u r e S p a r s e ( n o r m a l _ t e x t u r e ,   c o o r d ) ,   b a s e _ n o r m a l _ y _ c o e f f ) ; 
     r e t u r n   n o r m a l i z e ( 
         n o r m a l _ v e c . x   *   t a n g e n t   + 
         n o r m a l _ v e c . y   *   b i t a n g e n t   + 
         n o r m a l _ v e c . z   *   n o r m a l 
     ) ; 
 } 
 
 / / -   H e l p e r   t o   c o m p u t e   t h e   w o r l d   s p a c e   n o r m a l   f r o m   t a n g e n t   s p a c e   n o r m a l   g i v e n   b y 
 / / -   g e t T S N o r m a l   h e l p e r s ,   a n d   l o c a l   f r a m e   o f   t h e   m e s h . 
 v e c 3   c o m p u t e W S N o r m a l ( S p a r s e C o o r d   c o o r d ,   v e c 3   t a n g e n t ,   v e c 3   b i t a n g e n t ,   v e c 3   n o r m a l ) 
 { 
     v e c 3   n o r m a l _ v e c   =   g e t T S N o r m a l ( c o o r d ) ; 
     r e t u r n   n o r m a l i z e ( 
         n o r m a l _ v e c . x   *   t a n g e n t   + 
         n o r m a l _ v e c . y   *   b i t a n g e n t   + 
         n o r m a l _ v e c . z   *   n o r m a l 
     ) ; 
 } 
 
 / / -   [ D O C - O F F ]   D e p r e c a t e d ,   k e p t   f o r   c o m p a t i b i l i t y   r e a s o n s 
 v e c 3   n o r m a l F r o m H e i g h t ( v e c 2   t e x _ c o o r d ,   f l o a t   h e i g h t _ f o r c e ) 
 { 
     r e t u r n   n o r m a l F r o m H e i g h t ( g e t S p a r s e C o o r d ( t e x _ c o o r d ) ,   h e i g h t _ f o r c e ) ; 
 } 
 
 v e c 3   g e t T S N o r m a l ( v e c 2   t e x _ c o o r d ,   v e c 3   n o r m a l F r o m H e i g h t ) 
 { 
     r e t u r n   g e t T S N o r m a l ( g e t S p a r s e C o o r d ( t e x _ c o o r d ) ,   n o r m a l F r o m H e i g h t ) ; 
 } 
 
 v e c 3   g e t T S N o r m a l ( v e c 2   t e x _ c o o r d ) 
 { 
     r e t u r n   g e t T S N o r m a l ( g e t S p a r s e C o o r d ( t e x _ c o o r d ) ) ; 
 } 
 
 v e c 3   c o m p u t e W S B a s e N o r m a l ( v e c 2   t e x _ c o o r d ,   v e c 3   t a n g e n t ,   v e c 3   b i t a n g e n t ,   v e c 3   n o r m a l ) 
 { 
     r e t u r n   c o m p u t e W S B a s e N o r m a l ( g e t S p a r s e C o o r d ( t e x _ c o o r d ) ,   t a n g e n t ,   b i t a n g e n t ,   n o r m a l ) ; 
 } 
 
 v e c 3   c o m p u t e W S N o r m a l ( v e c 2   t e x _ c o o r d ,   v e c 3   t a n g e n t ,   v e c 3   b i t a n g e n t ,   v e c 3   n o r m a l ) 
 { 
     r e t u r n   c o m p u t e W S N o r m a l ( g e t S p a r s e C o o r d ( t e x _ c o o r d ) ,   t a n g e n t ,   b i t a n g e n t ,   n o r m a l ) ; 
 } 
 / / -   [ D O C - O N ] 
 # l i n e   1 1   1 2 
 
 / / -   W h i c h   v i e w   i s   s h a d e d . 
 / / :   p a r a m   a u t o   i s _ 2 d _ v i e w 
 u n i f o r m   b o o l   i s 2 D V i e w ; 
 
 / / -   W h a t   k i n d   o f   p r o j e c t i o n   i s   u s e d . 
 / / :   p a r a m   a u t o   i s _ p e r s p e c t i v e _ p r o j e c t i o n 
 u n i f o r m   b o o l   i s _ p e r s p e c t i v e ; 
 
 / / -   E y e   p o s i t i o n   i n   w o r l d   s p a c e . 
 / / :   p a r a m   a u t o   w o r l d _ e y e _ p o s i t i o n 
 u n i f o r m   v e c 3   c a m e r a _ p o s ; 
 
 / / -   C a m e r a   o r i e n t a t i o n   i n   w o r l d   s p a c e . 
 / / :   p a r a m   a u t o   w o r l d _ c a m e r a _ d i r e c t i o n 
 u n i f o r m   v e c 3   c a m e r a _ d i r ; 
 
 / / :   p a r a m   a u t o   f a c i n g 
 u n i f o r m   i n t   f a c i n g ; 
 
 b o o l   i s B a c k F a c e ( )   { 
     r e t u r n   f a c i n g   = =   - 1   | |   ( f a c i n g   = =   0   & &   ! g l _ F r o n t F a c i n g ) ; 
 } 
 
 / / -   C o m p u t e   t h e   w o r l d   s p a c e   e y e   v e c t o r 
 v e c 3   g e t E y e V e c ( v e c 3   p o s i t i o n )   { 
     r e t u r n   i s _ p e r s p e c t i v e   ? 
         n o r m a l i z e ( c a m e r a _ p o s   -   p o s i t i o n )   : 
         - c a m e r a _ d i r ; 
 } 
 
 / / -   C o n v e r t   a   v e c t o r   f r o m   t a n g e n t   s p a c e   t o   w o r l d   s p a c e 
 v e c 3   t a n g e n t S p a c e T o W o r l d S p a c e ( v e c 3   v e c T S ,   V 2 F   i n p u t s )   { 
     r e t u r n   n o r m a l i z e ( 
         v e c T S . x   *   i n p u t s . t a n g e n t   + 
         v e c T S . y   *   i n p u t s . b i t a n g e n t   + 
         v e c T S . z   *   i n p u t s . n o r m a l ) ; 
 } 
 
 / / -   C o n v e r t   a   v e c t o r   f r o m   w o r l d   s p a c e   t o   t a n g e n t   s p a c e 
 v e c 3   w o r l d S p a c e T o T a n g e n t S p a c e ( v e c 3   v e c W S ,   V 2 F   i n p u t s )   { 
     / /   A s s u m e   t h e   t r a n s f o r m a t i o n   i s   o r t h o g o n a l 
     r e t u r n   n o r m a l i z e ( v e c W S   *   m a t 3 ( i n p u t s . t a n g e n t ,   i n p u t s . b i t a n g e n t ,   i n p u t s . n o r m a l ) ) ; 
 } 
 
 / / -   L o c a l   f r a m e   o f   v e r t e x   i n   w o r l d   s p a c e 
 s t r u c t   L o c a l V e c t o r s   { 
     v e c 3   v e r t e x N o r m a l ; 
     v e c 3   t a n g e n t ,   b i t a n g e n t ,   n o r m a l ,   e y e ; 
 } ; 
 
 / / -   C o m p u t e   l o c a l   f r a m e   f r o m   c u s t o m   w o r l d   s p a c e   n o r m a l   a n d   a n i s o t r o p y   a n g l e 
 L o c a l V e c t o r s   c o m p u t e L o c a l F r a m e ( V 2 F   i n p u t s ,   v e c 3   n o r m a l ,   f l o a t   a n i s o A n g l e )   { 
     L o c a l V e c t o r s   v e c t o r s ; 
     v e c t o r s . v e r t e x N o r m a l   =   i n p u t s . n o r m a l ; 
     v e c t o r s . n o r m a l   =   n o r m a l ; 
 
     / /   F l i p   t h e   n o r m a l s   f o r   b a c k   f a c i n g   p o l y g o n s 
     i f   ( i s B a c k F a c e ( ) )   { 
         v e c t o r s . v e r t e x N o r m a l   =   - v e c t o r s . v e r t e x N o r m a l ; 
         v e c t o r s . n o r m a l   =   - v e c t o r s . n o r m a l ; 
     } 
 
     v e c t o r s . e y e   =   i s 2 D V i e w   ? 
         v e c t o r s . n o r m a l   :   / /   I n   2 D   v i e w ,   p u t   v i e w   v e c t o r   a l o n g   t h e   n o r m a l 
         g e t E y e V e c ( i n p u t s . p o s i t i o n ) ; 
 
     / /   T r i c k   t o   r e m o v e   b l a c k   a r t i f a c t s 
     / /   B a c k f a c e   ?   p l a c e   t h e   e y e   a t   t h e   o p p o s i t e   -   r e m o v e s   b l a c k   z o n e s 
     i f   ( d o t ( v e c t o r s . e y e ,   v e c t o r s . n o r m a l )   <   0 . 0 )   { 
         v e c t o r s . e y e   =   r e f l e c t ( v e c t o r s . e y e ,   v e c t o r s . n o r m a l ) ; 
     } 
 
     / /   C r e a t e   a   l o c a l   f r a m e   f o r   B R D F   w o r k 
     v e c 3   t a n g e n t   =   n o r m a l i z e ( 
         i n p u t s . t a n g e n t 
         -   v e c t o r s . n o r m a l   *   d o t ( i n p u t s . t a n g e n t ,   v e c t o r s . n o r m a l ) 
     ) ; 
     v e c 3   b i t a n g e n t   =   n o r m a l i z e ( 
         i n p u t s . b i t a n g e n t 
         -   v e c t o r s . n o r m a l   *   d o t ( i n p u t s . b i t a n g e n t ,   v e c t o r s . n o r m a l ) 
         -   t a n g e n t   *   d o t ( i n p u t s . b i t a n g e n t ,   t a n g e n t ) 
     ) ; 
 
     f l o a t   c o s A n g l e   =   c o s ( a n i s o A n g l e ) ; 
     f l o a t   s i n A n g l e   =   s i n ( a n i s o A n g l e ) ; 
     v e c t o r s . t a n g e n t   =   c o s A n g l e   *   t a n g e n t   -   s i n A n g l e   *   b i t a n g e n t ; 
     v e c t o r s . b i t a n g e n t   =   c o s A n g l e   *   b i t a n g e n t   +   s i n A n g l e   *   t a n g e n t ; 
 
     r e t u r n   v e c t o r s ; 
 } 
 
 / / -   C o m p u t e   l o c a l   f r a m e   f r o m   m e s h   a n d   d o c u m e n t   h e i g h t   a n d   n o r m a l s 
 L o c a l V e c t o r s   c o m p u t e L o c a l F r a m e ( V 2 F   i n p u t s )   { 
     / /   G e t   w o r l d   s p a c e   n o r m a l 
     v e c 3   n o r m a l   =   c o m p u t e W S N o r m a l ( i n p u t s . s p a r s e _ c o o r d ,   i n p u t s . t a n g e n t ,   i n p u t s . b i t a n g e n t ,   i n p u t s . n o r m a l ) ; 
     r e t u r n   c o m p u t e L o c a l F r a m e ( i n p u t s ,   n o r m a l ,   0 . 0 ) ; 
 } 
 # l i n e   5 1   7 
 
 
 / / -   B R D F   r e l a t e d   f u n c t i o n s 
 
 c o n s t   f l o a t   E P S I L O N _ C O E F   =   1 e - 4 ; 
 
 f l o a t   n o r m a l _ d i s t r i b ( 
     f l o a t   n d h , 
     f l o a t   R o u g h n e s s ) 
 { 
     / /   u s e   G G X   /   T r o w b r i d g e - R e i t z ,   s a m e   a s   D i s n e y   a n d   U n r e a l   4 
     / /   c f   h t t p : / / b l o g . s e l f s h a d o w . c o m / p u b l i c a t i o n s / s 2 0 1 3 - s h a d i n g - c o u r s e / k a r i s / s 2 0 1 3 _ p b s _ e p i c _ n o t e s _ v 2 . p d f   p 3 
     f l o a t   a l p h a   =   R o u g h n e s s   *   R o u g h n e s s ; 
     f l o a t   t m p   =   a l p h a   /   m a x ( 1 e - 8 , ( n d h * n d h * ( a l p h a * a l p h a - 1 . 0 ) + 1 . 0 ) ) ; 
     r e t u r n   t m p   *   t m p   *   M _ I N V _ P I ; 
 } 
 
 v e c 3   f r e s n e l ( 
     f l o a t   v d h , 
     v e c 3   F 0 ) 
 { 
     / /   S c h l i c k   w i t h   S p h e r i c a l   G a u s s i a n   a p p r o x i m a t i o n 
     / /   c f   h t t p : / / b l o g . s e l f s h a d o w . c o m / p u b l i c a t i o n s / s 2 0 1 3 - s h a d i n g - c o u r s e / k a r i s / s 2 0 1 3 _ p b s _ e p i c _ n o t e s _ v 2 . p d f   p 3 
     f l o a t   s p h g   =   e x p 2 ( ( - 5 . 5 5 4 7 3 * v d h   -   6 . 9 8 3 1 6 )   *   v d h ) ; 
     r e t u r n   F 0   +   ( v e c 3 ( 1 . 0 )   -   F 0 )   *   s p h g ; 
 } 
 
 f l o a t   G 1 ( 
     f l o a t   n d w ,   / /   w   i s   e i t h e r   L n   o r   V n 
     f l o a t   k ) 
 { 
     / /   O n e   g e n e r i c   f a c t o r   o f   t h e   g e o m e t r y   f u n c t i o n   d i v i d e d   b y   n d w 
     / /   N B   :   W e   s h o u l d   h a v e   k   >   0 
     r e t u r n   1 . 0   /   (   n d w * ( 1 . 0 - k )   +     k   ) ; 
 } 
 
 f l o a t   v i s i b i l i t y ( 
     f l o a t   n d l , 
     f l o a t   n d v , 
     f l o a t   R o u g h n e s s ) 
 { 
     / /   S c h l i c k   w i t h   S m i t h - l i k e   c h o i c e   o f   k 
     / /   c f   h t t p : / / b l o g . s e l f s h a d o w . c o m / p u b l i c a t i o n s / s 2 0 1 3 - s h a d i n g - c o u r s e / k a r i s / s 2 0 1 3 _ p b s _ e p i c _ n o t e s _ v 2 . p d f   p 3 
     / /   v i s i b i l i t y   i s   a   C o o k - T o r r a n c e   g e o m e t r y   f u n c t i o n   d i v i d e d   b y   ( n . l ) * ( n . v ) 
     f l o a t   k   =   m a x ( R o u g h n e s s   *   R o u g h n e s s   *   0 . 5 ,   1 e - 5 ) ; 
     r e t u r n   G 1 ( n d l , k ) * G 1 ( n d v , k ) ; 
 } 
 
 v e c 3   c o o k _ t o r r a n c e _ c o n t r i b ( 
     f l o a t   v d h , 
     f l o a t   n d h , 
     f l o a t   n d l , 
     f l o a t   n d v , 
     v e c 3   K s , 
     f l o a t   R o u g h n e s s ) 
 { 
     / /   T h i s   i s   t h e   c o n t r i b u t i o n   w h e n   u s i n g   i m p o r t a n c e   s a m p l i n g   w i t h   t h e   G G X   b a s e d 
     / /   s a m p l e   d i s t r i b u t i o n .   T h i s   m e a n s   c t _ c o n t r i b   =   c t _ b r d f   /   g g x _ p r o b a b i l i t y 
     r e t u r n   f r e s n e l ( v d h , K s )   *   ( v i s i b i l i t y ( n d l , n d v , R o u g h n e s s )   *   v d h   *   n d l   /   n d h   ) ; 
 } 
 
 v e c 3   i m p o r t a n c e S a m p l e G G X ( v e c 2   X i ,   v e c 3   T ,   v e c 3   B ,   v e c 3   N ,   f l o a t   r o u g h n e s s ) 
 { 
     f l o a t   a   =   r o u g h n e s s * r o u g h n e s s ; 
     f l o a t   c o s T   =   s q r t ( ( 1 . 0 - X i . y ) / ( 1 . 0 + ( a * a - 1 . 0 ) * X i . y ) ) ; 
     f l o a t   s i n T   =   s q r t ( 1 . 0 - c o s T * c o s T ) ; 
     f l o a t   p h i   =   2 . 0 * M _ P I * X i . x ; 
     r e t u r n 
         T   *   ( s i n T * c o s ( p h i ) )   + 
         B   *   ( s i n T * s i n ( p h i ) )   + 
         N   *     c o s T ; 
 } 
 
 f l o a t   p r o b a b i l i t y G G X ( f l o a t   n d h ,   f l o a t   v d h ,   f l o a t   R o u g h n e s s ) 
 { 
     r e t u r n   n o r m a l _ d i s t r i b ( n d h ,   R o u g h n e s s )   *   n d h   /   ( 4 . 0 * v d h ) ; 
 } 
 
 f l o a t   d i s t o r t i o n ( v e c 3   W n ) 
 { 
     / /   C o m p u t e s   t h e   i n v e r s e   o f   t h e   s o l i d   a n g l e   o f   t h e   ( d i f f e r e n t i a l )   p i x e l   i n 
     / /   t h e   c u b e   m a p   p o i n t e d   a t   b y   W n 
     f l o a t   s i n T   =   s q r t ( 1 . 0 - W n . y * W n . y ) ; 
     r e t u r n   s i n T ; 
 } 
 
 f l o a t   c o m p u t e L O D ( v e c 3   L n ,   f l o a t   p ) 
 { 
     r e t u r n   m a x ( 0 . 0 ,   ( m a x L o d - 1 . 5 )   -   0 . 5   *   l o g 2 ( f l o a t ( n b S a m p l e s )   *   p   *   d i s t o r t i o n ( L n ) ) ) ; 
 } 
 
 / / -   H o r i z o n   f a d i n g   t r i c k   f r o m   [ h t t p s : / / m a r m o s e t c o . t u m b l r . c o m / p o s t / 8 1 2 4 5 9 8 1 0 8 7 ] ( h t t p s : / / m a r m o s e t c o . t u m b l r . c o m / p o s t / 8 1 2 4 5 9 8 1 0 8 7 ) 
 f l o a t   h o r i z o n F a d i n g ( f l o a t   n d l ,   f l o a t   h o r i z o n F a d e ) 
 { 
     f l o a t   h o r i z   =   c l a m p ( 1 . 0   +   h o r i z o n F a d e   *   n d l ,   0 . 0 ,   1 . 0 ) ; 
     r e t u r n   h o r i z   *   h o r i z ; 
 } 
 
 / / -   C o m p u t e   t h e   l a m b e r t i a n   d i f f u s e   r a d i a n c e   t o   t h e   v i e w e r ' s   e y e 
 v e c 3   p b r C o m p u t e D i f f u s e ( v e c 3   n o r m a l ,   v e c 3   d i f f C o l o r ) 
 { 
     r e t u r n   e n v I r r a d i a n c e ( n o r m a l )   *   d i f f C o l o r ; 
 } 
 
 / / -   C o m p u t e   t h e   m i c r o f a c e t s   s p e c u l a r   r e f l e c t i o n   t o   t h e   v i e w e r ' s   e y e 
 v e c 3   p b r C o m p u t e S p e c u l a r ( L o c a l V e c t o r s   v e c t o r s ,   v e c 3   s p e c C o l o r ,   f l o a t   r o u g h n e s s ) 
 { 
     v e c 3   r a d i a n c e   =   v e c 3 ( 0 . 0 ) ; 
     f l o a t   n d v   =   d o t ( v e c t o r s . e y e ,   v e c t o r s . n o r m a l ) ; 
 
     f o r ( i n t   i = 0 ;   i < n b S a m p l e s ;   + + i ) 
     { 
         v e c 2   X i   =   f i b o n a c c i 2 D D i t h e r e d T e m p o r a l ( i ,   n b S a m p l e s ) ; 
         v e c 3   H n   =   i m p o r t a n c e S a m p l e G G X ( 
             X i ,   v e c t o r s . t a n g e n t ,   v e c t o r s . b i t a n g e n t ,   v e c t o r s . n o r m a l ,   r o u g h n e s s ) ; 
         v e c 3   L n   =   - r e f l e c t ( v e c t o r s . e y e , H n ) ; 
 
         f l o a t   f a d e   =   h o r i z o n F a d i n g ( d o t ( v e c t o r s . v e r t e x N o r m a l ,   L n ) ,   h o r i z o n F a d e ) ; 
 
         f l o a t   n d l   =   d o t ( v e c t o r s . n o r m a l ,   L n ) ; 
         n d l   =   m a x (   1 e - 8 ,   n d l   ) ; 
         f l o a t   v d h   =   m a x ( 1 e - 8 ,   d o t ( v e c t o r s . e y e ,   H n ) ) ; 
         f l o a t   n d h   =   m a x ( 1 e - 8 ,   d o t ( v e c t o r s . n o r m a l ,   H n ) ) ; 
         f l o a t   l o d S   =   r o u g h n e s s   <   0 . 0 1   ?   0 . 0   :   c o m p u t e L O D ( L n ,   p r o b a b i l i t y G G X ( n d h ,   v d h ,   r o u g h n e s s ) ) ; 
         r a d i a n c e   + =   f a d e   *   e n v S a m p l e L O D ( L n ,   l o d S )   * 
             c o o k _ t o r r a n c e _ c o n t r i b ( v d h ,   n d h ,   n d l ,   n d v ,   s p e c C o l o r ,   r o u g h n e s s ) ; 
     } 
     / /   R e m o v e   o c c l u s i o n s   o n   s h i n y   r e f l e c t i o n s 
     r a d i a n c e   / =   f l o a t ( n b S a m p l e s ) ; 
 
     r e t u r n   r a d i a n c e ; 
 } 
 # l i n e   6   6 
 # l i n e   0   1 4 
 / / -   l i b - p o m . g l s l 
 / / -   = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` g e t P a r a l l a x O f f s e t ` 
 / / -   ` a p p l y P a r a l l a x O f f s e t ` 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r y 
 # l i n e   0   1 5 
 / / -   l i b - s a m p l e r . g l s l 
 / / -   = = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` g e t A O ` 
 / / -   ` g e t S h a d o w F a c t o r ` 
 / / -   ` g e t G l o s s i n e s s ` 
 / / -   ` g e t R o u g h n e s s ` 
 / / -   ` g e t M e t a l l i c ` 
 / / -   ` g e t A n i s o t r o p y L e v e l ` 
 / / -   ` g e t A n i s o t r o p y A n g l e ` 
 / / -   ` g e t O p a c i t y ` 
 / / -   ` g e t H e i g h t ` 
 / / -   ` g e t D i s p l a c e m e n t ` 
 / / -   ` g e t S p e c u l a r L e v e l ` 
 / / -   ` g e t B a s e C o l o r ` 
 / / -   ` g e t D i f f u s e ` 
 / / -   ` g e t S p e c u l a r C o l o r ` 
 / / -   ` g e t S c a t t e r i n g ` 
 / / -   ` g e n e r a t e A n i s o t r o p i c R o u g h n e s s ` 
 / / -   ` g e n e r a t e D i f f u s e C o l o r ` 
 / / -   ` g e n e r a t e S p e c u l a r C o l o r ` 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r y 
 # l i n e   2 5   1 5 
 # l i n e   2 6   1 5 
 
 / / -   D e f a u l t   b a c k g r o u n d   c o l o r s   w h e n   t h e r e   i s   n o   d a t a   i n   c h a n n e l   ( a l p h a   i s   0 ) 
 c o n s t   v e c 3     D E F A U L T _ B A S E _ C O L O R               =   v e c 3 ( 0 . 5 ) ; 
 c o n s t   f l o a t   D E F A U L T _ R O U G H N E S S                 =   0 . 3 ; 
 c o n s t   f l o a t   D E F A U L T _ M E T A L L I C                   =   0 . 0 ; 
 c o n s t   f l o a t   D E F A U L T _ A N I S O T R O P Y _ L E V E L   =   0 . 0 ; 
 c o n s t   f l o a t   D E F A U L T _ A N I S O T R O P Y _ A N G L E   =   0 . 0 ; 
 c o n s t   f l o a t   D E F A U L T _ O P A C I T Y                     =   1 . 0 ; 
 c o n s t   f l o a t   D E F A U L T _ A O                               =   1 . 0 ; 
 c o n s t   f l o a t   D E F A U L T _ S P E C U L A R _ L E V E L       =   0 . 5 ; 
 c o n s t   f l o a t   D E F A U L T _ H E I G H T                       =   0 . 0 ; 
 c o n s t   f l o a t   D E F A U L T _ D I S P L A C E M E N T           =   0 . 0 ; 
 c o n s t   f l o a t   D E F A U L T _ S C A T T E R I N G               =   0 . 0 ; 
 
 / / -   A O   m a p . 
 / / :   p a r a m   a u t o   a o _ b l e n d i n g _ m o d e 
 u n i f o r m   i n t   a o _ b l e n d i n g _ m o d e ; 
 / / :   p a r a m   a u t o   t e x t u r e _ a o 
 u n i f o r m   S a m p l e r S p a r s e   b a s e _ a o _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ a o 
 u n i f o r m   S a m p l e r S p a r s e   a o _ t e x ; 
 
 / / -   A   v a l u e   u s e d   t o   t w e a k   t h e   A m b i e n t   O c c l u s i o n   i n t e n s i t y . 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   0 . 7 5 , 
 / / :       " l a b e l " :   " A O   I n t e n s i t y " , 
 / / :       " m i n " :   0 . 0 0 , 
 / / :       " m a x " :   1 . 0 , 
 / / :       " g r o u p " :   " C o m m o n   P a r a m e t e r s " 
 / / :   } 
 u n i f o r m   f l o a t   a o _ i n t e n s i t y ; 
 
 / / -   S h a d o w m a s k . 
 / / :   p a r a m   a u t o   s h a d o w _ m a s k _ e n a b l e 
 u n i f o r m   b o o l   s m _ e n a b l e ; 
 / / :   p a r a m   a u t o   s h a d o w _ m a s k _ o p a c i t y 
 u n i f o r m   f l o a t   s m _ o p a c i t y ; 
 / / :   p a r a m   a u t o   s h a d o w _ m a s k 
 u n i f o r m   s a m p l e r 2 D   s m _ t e x ; 
 / / :   p a r a m   a u t o   s c r e e n _ s i z e 
 u n i f o r m   v e c 4   s c r e e n _ s i z e ; 
 
 / / -   R e t u r n   s a m p l e d   g l o s s i n e s s   o r   a   d e f a u l t   v a l u e 
 f l o a t   g e t G l o s s i n e s s ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r   +   ( 1 . 0   -   D E F A U L T _ R O U G H N E S S )   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ; 
 } 
 
 f l o a t   g e t G l o s s i n e s s ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t G l o s s i n e s s ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   r o u g h n e s s   o r   a   d e f a u l t   v a l u e 
 f l o a t   g e t R o u g h n e s s ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r   +   D E F A U L T _ R O U G H N E S S   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ; 
 } 
 
 f l o a t   g e t R o u g h n e s s ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t R o u g h n e s s ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   m e t a l l i c   o r   a   d e f a u l t   v a l u e 
 f l o a t   g e t M e t a l l i c ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r   +   D E F A U L T _ M E T A L L I C   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ; 
 } 
 
 f l o a t   g e t M e t a l l i c ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t M e t a l l i c ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   a n i s o t r o p y   l e v e l   o r   a   d e f a u l t   v a l u e 
 f l o a t   g e t A n i s o t r o p y L e v e l ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r   +   D E F A U L T _ A N I S O T R O P Y _ L E V E L   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ; 
 } 
 
 f l o a t   g e t A n i s o t r o p y L e v e l ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t A n i s o t r o p y L e v e l ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   a n i s o t r o p y   a n g l e   o r   a   d e f a u l t   v a l u e 
 f l o a t   g e t A n i s o t r o p y A n g l e ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   M _ 2 P I   *   ( s a m p l e d V a l u e . r   +   D E F A U L T _ A N I S O T R O P Y _ A N G L E   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ) ; 
 } 
 
 f l o a t   g e t A n i s o t r o p y A n g l e ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     / /   M a n u a l   t r i l i n e a r   f i l t e r i n g 
     f l o a t   l e v e l   =   m a x ( 0 . 0 ,   t e x t u r e S p a r s e Q u e r y L o d ( s a m p l e r ,   c o o r d ) ) ; 
     i n t   l e v e l 0   =   i n t ( l e v e l ) ; 
     i n t   l e v e l 1   =   l e v e l 0   +   1 ; 
 
     i v e c 2   t e x S i z e 0   =   i v e c 2 ( s a m p l e r . s i z e . x y )   > >   l e v e l 0 ; 
     i v e c 2   t e x S i z e 1   =   t e x S i z e 0   > >   1 ; 
     i v e c 2   i t e x _ c o o r d 0   =   i v e c 2 ( c o o r d . t e x _ c o o r d   *   v e c 2 ( t e x S i z e 0 ) ) ; 
     i v e c 2   i t e x _ c o o r d 1   =   i v e c 2 ( c o o r d . t e x _ c o o r d   *   v e c 2 ( t e x S i z e 1 ) ) ; 
 
     / /   A s s u m i n g   t e x   s i z e s   a r e   p o w   o f   2 ,   w e   c a n   d o   t h e   f a s t   m o d u l o 
     i v e c 2   t e x S i z e M a s k 0   =   t e x S i z e 0   -   i v e c 2 ( 1 ) ; 
     i v e c 2   t e x S i z e M a s k 1   =   t e x S i z e 1   -   i v e c 2 ( 1 ) ; 
 
     / /   F e t c h   t h e   8   s a m p l e s   n e e d e d 
     f l o a t   a 0 0 0   =   g e t A n i s o t r o p y A n g l e ( t e x e l F e t c h ( s a m p l e r . t e x ,     i t e x _ c o o r d 0                                 &   t e x S i z e M a s k 0 ,   l e v e l 0 ) ) ; 
     f l o a t   a 0 0 1   =   g e t A n i s o t r o p y A n g l e ( t e x e l F e t c h ( s a m p l e r . t e x ,   ( i t e x _ c o o r d 0   +   i v e c 2 ( 1 ,   0 ) )   &   t e x S i z e M a s k 0 ,   l e v e l 0 ) )   -   a 0 0 0 ; 
     f l o a t   a 0 1 0   =   g e t A n i s o t r o p y A n g l e ( t e x e l F e t c h ( s a m p l e r . t e x ,   ( i t e x _ c o o r d 0   +   i v e c 2 ( 0 ,   1 ) )   &   t e x S i z e M a s k 0 ,   l e v e l 0 ) )   -   a 0 0 0 ; 
     f l o a t   a 0 1 1   =   g e t A n i s o t r o p y A n g l e ( t e x e l F e t c h ( s a m p l e r . t e x ,   ( i t e x _ c o o r d 0   +   i v e c 2 ( 1 ,   1 ) )   &   t e x S i z e M a s k 0 ,   l e v e l 0 ) )   -   a 0 0 0 ; 
     f l o a t   a 1 0 0   =   g e t A n i s o t r o p y A n g l e ( t e x e l F e t c h ( s a m p l e r . t e x ,     i t e x _ c o o r d 1                                 &   t e x S i z e M a s k 1 ,   l e v e l 1 ) )   -   a 0 0 0 ; 
     f l o a t   a 1 0 1   =   g e t A n i s o t r o p y A n g l e ( t e x e l F e t c h ( s a m p l e r . t e x ,   ( i t e x _ c o o r d 1   +   i v e c 2 ( 1 ,   0 ) )   &   t e x S i z e M a s k 1 ,   l e v e l 1 ) )   -   a 0 0 0 ; 
     f l o a t   a 1 1 0   =   g e t A n i s o t r o p y A n g l e ( t e x e l F e t c h ( s a m p l e r . t e x ,   ( i t e x _ c o o r d 1   +   i v e c 2 ( 0 ,   1 ) )   &   t e x S i z e M a s k 1 ,   l e v e l 1 ) )   -   a 0 0 0 ; 
     f l o a t   a 1 1 1   =   g e t A n i s o t r o p y A n g l e ( t e x e l F e t c h ( s a m p l e r . t e x ,   ( i t e x _ c o o r d 1   +   i v e c 2 ( 1 ,   1 ) )   &   t e x S i z e M a s k 1 ,   l e v e l 1 ) )   -   a 0 0 0 ; 
 
     / /   D e t e c t   i f   t h e   a n g l e   w a r p s   i n s i d e   t h e   f i l t e r i n g   f o o t p r i n t ,   a n d   f i x   i t 
     a 0 0 1   + =   a b s ( a 0 0 1 )   >   M _ P I   ?   s i g n ( a 0 0 1 )   *   - M _ 2 P I   +   a 0 0 0   :   a 0 0 0 ; 
     a 0 1 0   + =   a b s ( a 0 1 0 )   >   M _ P I   ?   s i g n ( a 0 1 0 )   *   - M _ 2 P I   +   a 0 0 0   :   a 0 0 0 ; 
     a 0 1 1   + =   a b s ( a 0 1 1 )   >   M _ P I   ?   s i g n ( a 0 1 1 )   *   - M _ 2 P I   +   a 0 0 0   :   a 0 0 0 ; 
     a 1 0 0   + =   a b s ( a 1 0 0 )   >   M _ P I   ?   s i g n ( a 1 0 0 )   *   - M _ 2 P I   +   a 0 0 0   :   a 0 0 0 ; 
     a 1 0 1   + =   a b s ( a 1 0 1 )   >   M _ P I   ?   s i g n ( a 1 0 1 )   *   - M _ 2 P I   +   a 0 0 0   :   a 0 0 0 ; 
     a 1 1 0   + =   a b s ( a 1 1 0 )   >   M _ P I   ?   s i g n ( a 1 1 0 )   *   - M _ 2 P I   +   a 0 0 0   :   a 0 0 0 ; 
     a 1 1 1   + =   a b s ( a 1 1 1 )   >   M _ P I   ?   s i g n ( a 1 1 1 )   *   - M _ 2 P I   +   a 0 0 0   :   a 0 0 0 ; 
 
     / /   T r i l i n e a r   b l e n d i n g   o f   t h e   s a m p l e s 
     v e c 2   t 0   =   c o o r d . t e x _ c o o r d   *   v e c 2 ( t e x S i z e 0 )   -   v e c 2 ( i t e x _ c o o r d 0 ) ; 
     v e c 2   t 1   =   c o o r d . t e x _ c o o r d   *   v e c 2 ( t e x S i z e 1 )   -   v e c 2 ( i t e x _ c o o r d 1 ) ; 
     r e t u r n   m i x ( 
         m i x ( m i x ( a 0 0 0 ,   a 0 0 1 ,   t 0 . x ) ,   m i x ( a 0 1 0 ,   a 0 1 1 ,   t 0 . x ) ,   t 0 . y ) , 
         m i x ( m i x ( a 1 0 0 ,   a 1 0 1 ,   t 1 . x ) ,   m i x ( a 1 1 0 ,   a 1 1 1 ,   t 1 . x ) ,   t 1 . y ) , 
         l e v e l   -   f l o a t ( l e v e l 0 ) ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   o p a c i t y   o r   a   d e f a u l t   v a l u e 
 f l o a t   g e t O p a c i t y ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r   +   D E F A U L T _ O P A C I T Y   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ; 
 } 
 
 f l o a t   g e t O p a c i t y ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t O p a c i t y ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   h e i g h t   o r   a   d e f a u l t   v a l u e 
 f l o a t   g e t H e i g h t ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r   +   D E F A U L T _ H E I G H T   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ; 
 } 
 
 f l o a t   g e t H e i g h t ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t H e i g h t ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   d i s p l a c e m e n t   o r   a   d e f a u l t   v a l u e 
 f l o a t   g e t D i s p l a c e m e n t ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r   +   D E F A U L T _ D I S P L A C E M E N T   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ; 
 } 
 
 f l o a t   g e t D i s p l a c e m e n t ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t D i s p l a c e m e n t ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   R e t u r n   a m b i e n t   o c c l u s i o n 
 f l o a t   g e t A O ( S p a r s e C o o r d   c o o r d ,   b o o l   i s _ p r e m u l t ) 
 { 
     v e c 2   a o _ l o o k u p   =   t e x t u r e S p a r s e ( b a s e _ a o _ t e x ,   c o o r d ) . r a ; 
     f l o a t   a o   =   a o _ l o o k u p . x   +   D E F A U L T _ A O   *   ( 1 . 0   -   a o _ l o o k u p . y ) ; 
 
     i f   ( a o _ t e x . i s _ s e t )   { 
         a o _ l o o k u p   =   t e x t u r e S p a r s e ( a o _ t e x ,   c o o r d ) . r g ; 
         i f   ( ! i s _ p r e m u l t )   a o _ l o o k u p . x   * =   a o _ l o o k u p . y ; 
         f l o a t   c h a n n e l _ a o   =   a o _ l o o k u p . x   +   D E F A U L T _ A O   *   ( 1 . 0   -   a o _ l o o k u p . y ) ; 
         i f   ( a o _ b l e n d i n g _ m o d e   = =   B l e n d i n g M o d e _ R e p l a c e )   { 
             a o   =   c h a n n e l _ a o ; 
         }   e l s e   i f   ( a o _ b l e n d i n g _ m o d e   = =   B l e n d i n g M o d e _ M u l t i p l y )   { 
             a o   * =   c h a n n e l _ a o ; 
         } 
     } 
 
     / /   M o d u l a t e   A O   v a l u e   b y   A O _ i n t e n s i t y 
     r e t u r n   m i x ( 1 . 0 ,   a o ,   a o _ i n t e n s i t y ) ; 
 } 
 
 / / -   H e l p e r   t o   g e t   a m b i e n t   o c c l u s i o n   f o r   s h a d i n g 
 f l o a t   g e t A O ( S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t A O ( c o o r d ,   t r u e ) ; 
 } 
 
 / / -   R e t u r n   s p e c u l a r   l e v e l 
 f l o a t   g e t S p e c u l a r L e v e l ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r   +   D E F A U L T _ S P E C U L A R _ L E V E L   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ; 
 } 
 
 f l o a t   g e t S p e c u l a r L e v e l ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t S p e c u l a r L e v e l ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   F e t c h   t h e   s h a d o w i n g   f a c t o r   ( s c r e e n - s p a c e ) 
 f l o a t   g e t S h a d o w F a c t o r ( ) 
 { 
     f l o a t   s h a d o w F a c t o r   =   1 . 0 ; 
 
     i f   ( s m _ e n a b l e )   { 
         v e c 2   s c r e e n C o o r d   =   ( g l _ F r a g C o o r d . x y   *   v e c 2 ( s c r e e n _ s i z e . z ,   s c r e e n _ s i z e . w ) ) ; 
         v e c 2   s h a d o w S a m p l e   =   t e x t u r e ( s m _ t e x ,   s c r e e n C o o r d ) . x y ; 
         / /   s h a d o w S a m p l e . x   /   s h a d o w S a m p l e . y   i s   t h e   n o r m a l i z e d   s h a d o w   f a c t o r . 
         / /   s h a d o w S a m p l e . x   m a y   a l r e a d y   b e   n o r m a l i z e d ,   s h a d o w S a m p l e . y   c o n t a i n s   0 . 0   i n   t h i s   c a s e . 
         s h a d o w F a c t o r   =   s h a d o w S a m p l e . y   = =   0 . 0   ?   s h a d o w S a m p l e . x   :   s h a d o w S a m p l e . x   /   s h a d o w S a m p l e . y ; 
     } 
 
     r e t u r n   m i x ( 1 . 0 ,   s h a d o w F a c t o r ,   s m _ o p a c i t y ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   b a s e   c o l o r   o r   a   d e f a u l t   v a l u e 
 v e c 3   g e t B a s e C o l o r ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r g b   +   D E F A U L T _ B A S E _ C O L O R   *   ( 1 . 0   -   s a m p l e d V a l u e . a ) ; 
 } 
 
 v e c 3   g e t B a s e C o l o r ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t B a s e C o l o r ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   d i f f u s e   c o l o r   o r   a   d e f a u l t   v a l u e 
 v e c 3   g e t D i f f u s e ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   g e t B a s e C o l o r ( s a m p l e d V a l u e ) ; 
 } 
 
 v e c 3   g e t D i f f u s e ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t D i f f u s e ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   s p e c u l a r   c o l o r   o r   a   d e f a u l t   v a l u e 
 v e c 3   g e t S p e c u l a r C o l o r ( v e c 4   s a m p l e d V a l u e ) 
 { 
     v e c 3   s p e c C o l o r   =   s a m p l e d V a l u e . r g b   +   D E F A U L T _ B A S E _ C O L O R   *   ( 1 . 0   -   s a m p l e d V a l u e . a ) ; 
     v e c 3   d e f a u l t F 0   =   m i x ( v e c 3 ( 0 . 0 4 ) ,   s p e c C o l o r ,   D E F A U L T _ M E T A L L I C ) ; 
     r e t u r n   m i x ( s p e c C o l o r ,   d e f a u l t F 0 ,   ( 1 . 0   -   s a m p l e d V a l u e . a ) ) ; 
 } 
 
 v e c 3   g e t S p e c u l a r C o l o r ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t S p e c u l a r C o l o r ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   G e n e r a t e   a n i s o t r o p i c   r o u g h n e s s   f r o m   r o u g h n e s s   a n d   a n i s o t r o p y   l e v e l 
 v e c 2   g e n e r a t e A n i s o t r o p i c R o u g h n e s s ( f l o a t   r o u g h n e s s ,   f l o a t   a n i s o L e v e l ) 
 { 
     r e t u r n   v e c 2 ( r o u g h n e s s ,   r o u g h n e s s   /   s q r t ( m a x ( 1 e - 8 ,   1 . 0   -   a n i s o L e v e l ) ) ) ; 
 } 
 
 / / -   G e n e r a t e   d i f f u s e   c o l o r   f r o m   b a s e   c o l o r   a n d   m e t a l l i c   f a c t o r 
 v e c 3   g e n e r a t e D i f f u s e C o l o r ( v e c 3   b a s e C o l o r ,   f l o a t   m e t a l l i c ) 
 { 
     r e t u r n   b a s e C o l o r   *   ( 1 . 0   -   m e t a l l i c ) ; 
 } 
 
 / / -   G e n e r a t e   s p e c u l a r   c o l o r   f r o m   d i e l e c t r i c   s p e c u l a r   l e v e l ,   b a s e   c o l o r   a n d   m e t a l l i c   f a c t o r 
 v e c 3   g e n e r a t e S p e c u l a r C o l o r ( f l o a t   s p e c u l a r L e v e l ,   v e c 3   b a s e C o l o r ,   f l o a t   m e t a l l i c ) 
 { 
     r e t u r n   m i x ( v e c 3 ( 0 . 0 8   *   s p e c u l a r L e v e l ) ,   b a s e C o l o r ,   m e t a l l i c ) ; 
 } 
 
 / / -   G e n e r a t e   s p e c u l a r   c o l o r   f r o m   b a s e   c o l o r   a n d   m e t a l l i c   f a c t o r ,   u s i n g   d e f a u l t 
 / / -   s p e c u l a r   l e v e l   ( 0 . 0 4 )   f o r   d i e l e c t r i c s 
 v e c 3   g e n e r a t e S p e c u l a r C o l o r ( v e c 3   b a s e C o l o r ,   f l o a t   m e t a l l i c ) 
 { 
     r e t u r n   m i x ( v e c 3 ( 0 . 0 4 ) ,   b a s e C o l o r ,   m e t a l l i c ) ; 
 } 
 
 / / -   R e t u r n   s a m p l e d   s c a t t e r i n g   v a l u e   o r   a   d e f a u l t   v a l u e 
 f l o a t   g e t S c a t t e r i n g ( v e c 4   s a m p l e d V a l u e ) 
 { 
     r e t u r n   s a m p l e d V a l u e . r   +   D E F A U L T _ S C A T T E R I N G   *   ( 1 . 0   -   s a m p l e d V a l u e . g ) ; 
 } 
 
 f l o a t   g e t S c a t t e r i n g ( S a m p l e r S p a r s e   s a m p l e r ,   S p a r s e C o o r d   c o o r d ) 
 { 
     r e t u r n   g e t S c a t t e r i n g ( t e x t u r e S p a r s e ( s a m p l e r ,   c o o r d ) ) ; 
 } 
 
 / / -   [ D O C - O F F ]   D e p r e c a t e d ,   k e p t   f o r   c o m p a t i b i l i t y   r e a s o n s 
 # d e f i n e   D E C L A R E _ D E P R E C A T E D _ H E L P E R ( N A M E ,   T Y P E )   \ 
     T Y P E   g e t # # N A M E ( s a m p l e r 2 D   t e x ,   v e c 2   t e x _ c o o r d )   {   \ 
         r e t u r n   g e t # # N A M E ( t e x t u r e ( t e x ,   t e x _ c o o r d ) ) ;   \ 
     } 
 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( G l o s s i n e s s ,   f l o a t ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( R o u g h n e s s ,   f l o a t ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( M e t a l l i c ,   f l o a t ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( A n i s o t r o p y L e v e l ,   f l o a t ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( A n i s o t r o p y A n g l e ,   f l o a t ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( O p a c i t y ,   f l o a t ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( H e i g h t ,   f l o a t ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( D i s p l a c e m e n t ,   f l o a t ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( S p e c u l a r L e v e l ,   f l o a t ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( B a s e C o l o r ,   v e c 3 ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( D i f f u s e ,   v e c 3 ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( S p e c u l a r C o l o r ,   v e c 3 ) 
 D E C L A R E _ D E P R E C A T E D _ H E L P E R ( S c a t t e r i n g ,   f l o a t ) 
 
 # u n d e f   D E C L A R E _ D E P R E C A T E D _ H E L P E R 
 
 / /   N o t   t r i v i a l   w r a p p e r 
 f l o a t   g e t A O ( v e c 2   t e x _ c o o r d ,   b o o l   i s _ p r e m u l t ) 
 { 
     r e t u r n   g e t A O ( g e t S p a r s e C o o r d ( t e x _ c o o r d ) ,   i s _ p r e m u l t ) ; 
 } 
 
 f l o a t   g e t A O ( v e c 2   t e x _ c o o r d ) 
 { 
     r e t u r n   g e t A O ( g e t S p a r s e C o o r d ( t e x _ c o o r d ) ) ; 
 } 
 / / -   [ D O C - O N ] 
 # l i n e   9   1 4 
 
 / / -   P a r a l l a x   o c c l u s i o n   m a p p i n g   r e l a t e d   u n i f o r m s 
 / / :   p a r a m   a u t o   i s _ 2 d _ v i e w 
 u n i f o r m   b o o l   i s T e x t u r e V i e w ; 
 
 / / :   p a r a m   a u t o   c h a n n e l _ d i s p l a c e m e n t 
 u n i f o r m   S a m p l e r S p a r s e   d i s p l a c e m e n t _ t e x ; 
 
 / / :   p a r a m   c u s t o m   {   " l a b e l " :   " E n a b l e " ,   " d e f a u l t " :   f a l s e ,   " g r o u p " :   " P a r a l l a x   O c c l u s i o n   M a p p i n g "   } 
 u n i f o r m   b o o l   u s e P O M ; 
 
 / / :   p a r a m   c u s t o m   {   " l a b e l " :   " S t r e n g t h " ,   " d e f a u l t " :   1 . 0 ,   " m i n " :   0 . 0 1 ,   " m a x " :   1 0 . 0 ,   " g r o u p " :   " P a r a l l a x   O c c l u s i o n   M a p p i n g "   } 
 u n i f o r m   f l o a t   p o m S t r e n g t h ; 
 
 / / :   p a r a m   c u s t o m   {   " l a b e l " :   " M i n i m u m   s a m p l e s " ,   " d e f a u l t " :   4 ,   " m i n " :   1 ,   " m a x " :   6 4 ,   " g r o u p " :   " P a r a l l a x   O c c l u s i o n   M a p p i n g "   } 
 u n i f o r m   i n t   m i n P O M S a m p l e s ; 
 
 / / :   p a r a m   c u s t o m   {   " l a b e l " :   " M a x i m u m   s a m p l e s " ,   " d e f a u l t " :   1 6 ,   " m i n " :   1 ,   " m a x " :   6 4 ,   " g r o u p " :   " P a r a l l a x   O c c l u s i o n   M a p p i n g "   } 
 u n i f o r m   i n t   m a x P O M S a m p l e s ; 
 
 / / -   C o m p u t e   t h e   o f f s e t   o f   t e x t u r e   c o o r d i n a t e s   b a s e d   o n   p a r a l l a x 
 v e c 2   g e t P a r a l l a x O f f s e t ( v e c 2   t e x C o o r d ,   v e c 3   v i e w T S ,   f l o a t   l o d ) 
 { 
     i f   ( ! u s e P O M   | |   i s T e x t u r e V i e w   | |   ! d i s p l a c e m e n t _ t e x . i s _ s e t )   r e t u r n   v e c 2 ( 0 . 0 ) ; 
 
     / /   C o n v e n t i o n :   1 . 0   i s   t o p ,   - 1 . 0   i s   b o t t o m   -   P O M   i s   a l w a y s   i n w a r d ,   n o   e x t r u s i o n 
     i n t   n b S t e p s   =   i n t ( m i x ( m a x P O M S a m p l e s ,   m i n P O M S a m p l e s ,   v i e w T S . z ) ) ; 
     f l o a t   a m p l i t u d e   =   4 . 0   *   p o m S t r e n g t h   /   ( H E I G H T _ F A C T O R   *   a b s ( v i e w T S . z )   *   n b S t e p s ) ; 
     v e c 3   r a y S t e p   =   v e c 3 ( - a m p l i t u d e   *   v i e w T S . x y ,   - 2 . 0   /   n b S t e p s ) ; 
 
     / /   R a y m a r c h   u n t i l   w e   c r o s s   t h e   s u r f a c e 
     v e c 3   r a y P o s   =   v e c 3 ( t e x C o o r d ,   1 . 0 ) ; 
     f l o a t   p r e v H e i g h t ; 
     f l o a t   c u r r H e i g h t   =   g e t D i s p l a c e m e n t ( t e x t u r e L o d ( d i s p l a c e m e n t _ t e x . t e x ,   r a y P o s . x y ,   l o d ) ) ; 
     i n t   i   =   0 ; 
     d o   { 
         r a y P o s   + =   r a y S t e p ; 
         p r e v H e i g h t   =   c u r r H e i g h t ; 
         c u r r H e i g h t   =   g e t D i s p l a c e m e n t ( t e x t u r e L o d ( d i s p l a c e m e n t _ t e x . t e x ,   r a y P o s . x y ,   l o d ) ) ; 
         i + + ; 
     }   w h i l e   ( i   <   n b S t e p s   & &   c u r r H e i g h t   <   r a y P o s . z ) ; 
 
     / /   B i n a r y   s e a r c h   w i t h   l i n e a r   i n t e r p o l a t i o n   t o   r e f i n e   i n t e r s e c t i o n 
     v e c 3   p r e v R a y P o s   =   r a y P o s   -   r a y S t e p ; 
     v e c 3   n e w R a y P o s   =   p r e v R a y P o s ; 
     f l o a t   n e w H e i g h t   =   p r e v H e i g h t ; 
     i   =   0 ; 
     w h i l e   ( i   <   3   & &   a b s ( n e w H e i g h t   -   n e w R a y P o s . z )   >   1 e - 3 )   { 
         f l o a t   p r e v D e l t a   =   p r e v R a y P o s . z   -   p r e v H e i g h t ; 
         f l o a t   d e l t a   =   c u r r H e i g h t   -   r a y P o s . z ; 
         n e w R a y P o s   =   ( p r e v D e l t a   *   r a y P o s   +   d e l t a   *   p r e v R a y P o s )   /   ( p r e v D e l t a   +   d e l t a ) ; 
         n e w H e i g h t   =   g e t D i s p l a c e m e n t ( t e x t u r e L o d ( d i s p l a c e m e n t _ t e x . t e x ,   n e w R a y P o s . x y ,   l o d ) ) ; 
 
         i f   ( n e w H e i g h t   >   n e w R a y P o s . z )   { 
             c u r r H e i g h t   =   n e w H e i g h t ; 
             r a y P o s   =   n e w R a y P o s ; 
         }   e l s e   { 
             p r e v H e i g h t   =   n e w H e i g h t ; 
             p r e v R a y P o s   =   n e w R a y P o s ; 
         } 
 
         i + + ; 
     } 
 
     r e t u r n   n e w R a y P o s . x y   -   t e x C o o r d ; 
 } 
 
 / / -   [ D O C - O F F ]   D e p r e c a t e d ,   k e p t   f o r   c o m p a t i b i l i t y   r e a s o n s 
 v e c 2   g e t P a r a l l a x O f f s e t ( v e c 2   t e x C o o r d ,   v e c 3   v i e w T S ) 
 { 
     f l o a t   l o d   =   t e x t u r e S p a r s e Q u e r y L o d ( d i s p l a c e m e n t _ t e x ,   g e t S p a r s e C o o r d ( t e x C o o r d ) ) ; 
     r e t u r n   g e t P a r a l l a x O f f s e t ( t e x C o o r d ,   v i e w T S ,   l o d ) ; 
 } 
 / / -   [ D O C - O N ] 
 
 / / -   U p d a t e   i n p u t   t e x t u r e   c o o r d i n a t e s   w i t h   p a r a l l a x   o f f s e t 
 v o i d   a p p l y P a r a l l a x O f f s e t ( i n o u t   V 2 F   i n p u t s ,   v e c 3   v i e w T S ) 
 { 
     f l o a t   l o d   =   t e x t u r e S p a r s e Q u e r y L o d ( d i s p l a c e m e n t _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
     v e c 2   o f f s e t   =   g e t P a r a l l a x O f f s e t ( i n p u t s . t e x _ c o o r d ,   v i e w T S ,   l o d ) ; 
     i f   ( a n y ( n o t E q u a l ( o f f s e t , v e c 2 ( 0 . 0 ) ) ) )   { 
         i n p u t s . t e x _ c o o r d   + =   o f f s e t ; 
         i n p u t s . s p a r s e _ c o o r d   =   g e t S p a r s e C o o r d ( i n p u t s . t e x _ c o o r d ) ; 
     } 
 } 
 # l i n e   7   6 
 
 / / -   D e c l a r e   t h e   i r a y   m d l   m a t e r i a l   t o   u s e   w i t h   t h i s   s h a d e r . 
 / / :   m e t a d a t a   { 
 / / :       " m d l " : " m d l : : a l g : : m a t e r i a l s : : p h y s i c a l l y _ m e t a l l i c _ r o u g h n e s s : : p h y s i c a l l y _ m e t a l l i c _ r o u g h n e s s " 
 / / :   } 
 
 / / -   S h o w   b a c k   f a c e s   a s   t h e r e   m a y   b e   h o l e s   i n   f r o n t   f a c e s . 
 / / :   s t a t e   c u l l _ f a c e   o f f 
 
 / / -   E n a b l e   a l p h a   b l e n d i n g 
 / / :   s t a t e   b l e n d   o v e r _ p r e m u l t 
 
 / / -   C h a n n e l s   n e e d e d   f o r   m e t a l / r o u g h   w o r k f l o w   a r e   b o u n d   h e r e . 
 / / :   p a r a m   a u t o   c h a n n e l _ b a s e c o l o r 
 u n i f o r m   S a m p l e r S p a r s e   b a s e c o l o r _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ r o u g h n e s s 
 u n i f o r m   S a m p l e r S p a r s e   r o u g h n e s s _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ m e t a l l i c 
 u n i f o r m   S a m p l e r S p a r s e   m e t a l l i c _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ o p a c i t y 
 u n i f o r m   S a m p l e r S p a r s e   o p a c i t y _ t e x ; 
 
 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   t r u e   } 
 u n i f o r m   b o o l   D e b u g F r i n g e l e s s M e t a l l i c ; 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   f a l s e   } 
 u n i f o r m   b o o l   D e b u g A c e s T o n e M a p p i n g ; 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   t r u e   } 
 u n i f o r m   b o o l   D e b u g L i n e a r T o n e M a p p i n g ; 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   f a l s e   } 
 u n i f o r m   b o o l   D e b u g A l b e d o ; 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   f a l s e   } 
 u n i f o r m   b o o l   D e b u g S p e c C o l o r ; 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   f a l s e   } 
 u n i f o r m   b o o l   D e b u g R o u g h n e s s ; 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   f a l s e   } 
 u n i f o r m   b o o l   D e b u g N o r m a l ; 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   f a l s e   } 
 u n i f o r m   b o o l   D e b u g A o ; 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   1 . 0   } 
 u n i f o r m   f l o a t   D e b u g D i r e c t D i f f u s e ; 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   1 . 0   } 
 u n i f o r m   f l o a t   D e b u g D i r e c t S p e c u l a r ; 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   1 . 0   } 
 u n i f o r m   f l o a t   D e b u g I n d i r e c t D i f f u s e ; 
 / / :   p a r a m   c u s t o m   {   " d e f a u l t " :   1 . 0   } 
 u n i f o r m   f l o a t   D e b u g I n d i r e c t S p e c u l a r ; 
 
 
 # d e f i n e   S U B S T A N C E 
 # d e f i n e   D E B U G 
 # d e f i n e   D E V I C E _ I S _ F A S T 
 
 / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / 
 / /   s t d _ p b r . g l s l   - -   B E G I N 
 
 / /   R e q u i r e m e n t s : 
 / / 
 / /   D e p e n d i n g   o n   p l a t f o r m ,   s o m e   o r   a l l   o f   t h e   b e l o w   f u n c t i o n s   m u s t   b e   d e f i n e d   b y   t h e   c l i e n t   s h a d e r   b e f o r e   t h i s   f i l e   i s   i n c l u d e d   ( a   f o r m   o f   c a l l b a c k ) : 
 / / 
 / /   s a m p l e S p e c u l a r E n v m a p L o d ( ) 
 / /   s a m p l e R a d i a n c e ( ) 
 / /   c a l c u l a t e D i f f u s e I r r a d i a n c e ( ) 
 
 # i f n d e f   M A Y A 
 f l o a t   s a t u r a t e ( f l o a t   v a l u e )   { 
         r e t u r n   c l a m p ( v a l u e ,   0 . 0 ,   1 . 0 ) ; 
 } 
 
 v e c 3   s a t u r a t e ( v e c 3   v a l u e )   { 
         r e t u r n   c l a m p ( v a l u e ,   0 . 0 ,   1 . 0 ) ; 
 } 
 # e n d i f 
 
 # i f   d e f i n e d ( M A Y A )   | |   d e f i n e d ( S U B S T A N C E ) 
 f l o a t   s r g b T o L i n e a r ( f l o a t   x )   { 
         r e t u r n   x   < =   0 . 0 4 0 4 5   ?   x   *   0 . 0 7 7 3 9 9 3 8 0 8   :   p o w ( ( x   +   0 . 0 5 5 )   /   1 . 0 5 5 ,   2 . 4 ) ; 
 } 
 
 f l o a t   l i n e a r T o S r g b ( f l o a t   x )   { 
         r e t u r n   x   < =   0 . 0 0 3 1 3 0 8   ?   1 2 . 9 2   *   x   :   1 . 0 5 5   *   p o w ( x ,   0 . 4 1 6 6 6 )   -   0 . 0 5 5 ; 
 } 
 # e l s e 
 f l o a t   s r g b T o L i n e a r ( f l o a t   x )   { 
         r e t u r n   p o w ( x ,   2 . 2 ) ; 
 } 
 
 f l o a t   l i n e a r T o S r g b ( f l o a t   x )   { 
         r e t u r n   p o w ( x ,   1 . 0   /   2 . 2 ) ; 
 } 
 # e n d i f 
 
 v e c 3   s r g b T o L i n e a r ( v e c 3   c o l o r )   { 
         r e t u r n   v e c 3 ( s r g b T o L i n e a r ( c o l o r . r ) ,   s r g b T o L i n e a r ( c o l o r . g ) ,   s r g b T o L i n e a r ( c o l o r . b ) ) ; 
 } 
 
 v e c 3   l i n e a r T o S r g b ( v e c 3   c o l o r )   { 
         r e t u r n   v e c 3 ( l i n e a r T o S r g b ( c o l o r . r ) ,   l i n e a r T o S r g b ( c o l o r . g ) ,   l i n e a r T o S r g b ( c o l o r . b ) ) ; 
 } 
 
 s t r u c t   S u r f a c e P r o p e r t i e s   { 
         v e c 3   a l b e d o ; 
         f l o a t   o p a c i t y ; 
         v e c 3   n o r m a l ; 
         f l o a t   m e t a l l i c ; 
         f l o a t   r o u g h n e s s ; 
         v e c 3   e m i s s i v e ; 
         v e c 3   a o ; 
 
         / /   D e r i v e d   s u r f a c e   p r o p e r t i e s 
         v e c 3   s p e c C o l o r ; 
 } ; 
 
 s t r u c t   L i g h t i n g C o m p o n e n t s   { 
         v e c 3   d i r e c t D i f f u s e ; 
         v e c 3   d i r e c t S p e c u l a r ; 
         v e c 3   i n d i r e c t D i f f u s e ; 
         v e c 3   i n d i r e c t S p e c u l a r ; 
         v e c 3   e m i t t e d ; 
         v e c 3   t r a n s m i t t e d ; 
 } ; 
 
 s t r u c t   L i g h t P r o p e r t i e s   { 
         v e c 3   d i r e c t i o n ; 
         v e c 3   c o l o r ; 
         f l o a t   a t t e n u a t i o n ; 
 } ; 
 
 s t r u c t   D e b u g O p t i o n s   { 
         b o o l   e n a b l e M e t a l l i c ; 
         b o o l   e n v B R D F A p p r o x ; 
         b o o l   e n v B e n t N o r m a l ; 
         f l o a t   e n v M i p ; 
         b o o l   e n v S a m p l i n g ; 
         b o o l   e n v S a m p l i n g G r o u n d T r u t h ; 
         i n t   e n v S a m p l e s ; 
         i n t   e n v R a n d o m i z e ; 
         b o o l   f r i n g e l e s s M e t a l l i c ; 
         b o o l   a c e s T o n e M a p p i n g ; 
         b o o l   l i n e a r T o n e M a p p i n g ; 
         b o o l   a l b e d o ; 
         b o o l   s p e c C o l o r ; 
         b o o l   r o u g h n e s s ; 
         b o o l   n o r m a l ; 
         b o o l   a o ; 
         f l o a t   d i r e c t D i f f u s e ; 
         f l o a t   d i r e c t S p e c u l a r ; 
         f l o a t   i n d i r e c t D i f f u s e ; 
         f l o a t   i n d i r e c t S p e c u l a r ; 
 } ; 
 
 S u r f a c e P r o p e r t i e s   d e f a u l t S u r f a c e P r o p e r t i e s ( )   { 
         S u r f a c e P r o p e r t i e s   s u r f a c e P r o p e r t i e s ; 
 
         s u r f a c e P r o p e r t i e s . a l b e d o   =   v e c 3 ( 0 . 0 ) ; 
         s u r f a c e P r o p e r t i e s . o p a c i t y   =   1 . 0 ; 
         s u r f a c e P r o p e r t i e s . n o r m a l   =   v e c 3 ( 0 . 0 ) ; 
         s u r f a c e P r o p e r t i e s . m e t a l l i c   =   0 . 0 ; 
         s u r f a c e P r o p e r t i e s . r o u g h n e s s   =   0 . 0 ; 
         s u r f a c e P r o p e r t i e s . e m i s s i v e   =   v e c 3 ( 0 . 0 ) ; 
         s u r f a c e P r o p e r t i e s . a o   =   v e c 3 ( 1 . 0 ) ; 
 
         r e t u r n   s u r f a c e P r o p e r t i e s ; 
 } 
 
 L i g h t i n g C o m p o n e n t s   d e f a u l t L i g h t i n g C o m p o n e n t s ( )   { 
         L i g h t i n g C o m p o n e n t s   l i g h t i n g ; 
 
         l i g h t i n g . d i r e c t D i f f u s e   =   v e c 3 ( 0 . 0 ) ; 
         l i g h t i n g . d i r e c t S p e c u l a r   =   v e c 3 ( 0 . 0 ) ; 
         l i g h t i n g . i n d i r e c t D i f f u s e   =   v e c 3 ( 1 . 0 ) ; 
         l i g h t i n g . i n d i r e c t S p e c u l a r   =   v e c 3 ( 0 . 0 ) ; 
         l i g h t i n g . e m i t t e d   =   v e c 3 ( 0 . 0 ) ; 
         l i g h t i n g . t r a n s m i t t e d   =   v e c 3 ( 0 . 0 ) ; 
 
         r e t u r n   l i g h t i n g ; 
 } 
 
 D e b u g O p t i o n s   d e f a u l t D e b u g O p t i o n s ( )   { 
         D e b u g O p t i o n s   d e b u g ; 
 
         d e b u g . e n a b l e M e t a l l i c   =   t r u e ; 
         d e b u g . e n v B R D F A p p r o x   =   t r u e ; 
         d e b u g . e n v B e n t N o r m a l   =   t r u e ; 
         d e b u g . e n v M i p   =   - 1 . 0 ; 
         d e b u g . e n v S a m p l i n g   =   f a l s e ; 
         d e b u g . e n v S a m p l i n g G r o u n d T r u t h   =   f a l s e ; 
 # i f n d e f   M O B I L E 
         d e b u g . e n v S a m p l e s   =   5 0 0 ; 
         d e b u g . e n v R a n d o m i z e   =   3 3 3 ; 
 # e n d i f 
         d e b u g . f r i n g e l e s s M e t a l l i c   =   t r u e ; 
         d e b u g . a c e s T o n e M a p p i n g   =   f a l s e ; 
         d e b u g . l i n e a r T o n e M a p p i n g   =   f a l s e ; 
         d e b u g . a l b e d o   =   f a l s e ; 
         d e b u g . s p e c C o l o r   =   f a l s e ; 
         d e b u g . r o u g h n e s s   =   f a l s e ; 
         d e b u g . n o r m a l   =   f a l s e ; 
         d e b u g . d i r e c t D i f f u s e   =   1 . 0 ; 
         d e b u g . i n d i r e c t D i f f u s e   =   1 . 0 ; 
         d e b u g . d i r e c t S p e c u l a r   =   1 . 0 ; 
         d e b u g . i n d i r e c t S p e c u l a r   =   1 . 0 ; 
 
         r e t u r n   d e b u g ; 
 } 
 
 v e c 3   f r e s n e l S c h l i c k S u b ( f l o a t   c o s T h e t a ,   v e c 3   F 0 ,   v e c 3   f r e s n e l M a x )   { 
         f l o a t   b   =   1 . 0   -   c o s T h e t a ; 
         f l o a t   b 2   =   b   *   b ; 
         f l o a t   b 5   =   b 2   *   b 2   *   b ;     / /   b 5   =   p o w ( 1 - c o s T h e t a ,   5 ) ; 
         r e t u r n   F 0   +   ( f r e s n e l M a x   -   F 0 )   *   b 5 ; 
 } 
 
 v e c 3   f r e s n e l S c h l i c k ( f l o a t   c o s T h e t a ,   v e c 3   F 0 )   { 
         r e t u r n   f r e s n e l S c h l i c k S u b ( c o s T h e t a ,   F 0 ,   v e c 3 ( 1 . 0 ) ) ; 
 } 
 
 f l o a t   D g g x ( f l o a t   N d o t H ,   f l o a t   r o u g h n e s s )   { 
         f l o a t   a   =   r o u g h n e s s   *   r o u g h n e s s ; 
         f l o a t   a 2   =   a   *   a ; 
         f l o a t   N d o t H 2   =   N d o t H   *   N d o t H ; 
         f l o a t   b   =   N d o t H 2   *   ( a 2   -   1 . 0 )   +   1 . 0 ; 
         f l o a t   b 2   =   b   *   b ; 
         r e t u r n   a 2   /   b 2 ; 
 } 
 
 f l o a t   G g g x 1 ( f l o a t   N d o t V ,   f l o a t   r o u g h n e s s )   { 
         f l o a t   k   =   r o u g h n e s s   +   1 . 0 ; 
         k   =   k   *   k   *   0 . 1 2 5 ; 
         r e t u r n   N d o t V   *   ( 1 . 0   -   k )   +   k ;     / /   T h e   N d o t V   a n d   N d o t L   f r o m   t h e   n u m e r a t o r   o f   G   c a n c e l   w i t h   t h e   N d o t V   a n d   N d o t L   i n   t h e   d e n o m i n a t o r   o f   t h e   C o o k   T o r r a n c e   B R D F .   W e   t a k e   t h e   r e c i p r o c a l   t o g e t h e r   i n   G . 
 } 
 
 f l o a t   G g g x ( f l o a t   N d o t L ,   f l o a t   N d o t V ,   f l o a t   r o u g h n e s s )   { 
         / /   S c h l i c k   a p p r o x i m a t i o n   o f   S m i t h   G   f o r   G G X ,   a   l a   U E 4 :   h t t p : / / b l o g . s e l f s h a d o w . c o m / p u b l i c a t i o n s / s 2 0 1 3 - s h a d i n g - c o u r s e / k a r i s / s 2 0 1 3 _ p b s _ e p i c _ n o t e s _ v 2 . p d f 
         r e t u r n   1 . 0   /   ( G g g x 1 ( N d o t L ,   r o u g h n e s s )   *   G g g x 1 ( N d o t V ,   r o u g h n e s s ) ) ; 
 } 
 
 v e c 3   c a l c u l a t e D i r e c t D i f f u s e ( S u r f a c e P r o p e r t i e s   s u r f a c e P r o p e r t i e s ,   v e c 3   L )   { 
         r e t u r n   v e c 3 ( s a t u r a t e ( d o t ( s u r f a c e P r o p e r t i e s . n o r m a l ,   L ) ) ) ; 
 } 
 
 v e c 3   c a l c u l a t e D i r e c t S p e c u l a r ( S u r f a c e P r o p e r t i e s   s u r f a c e P r o p e r t i e s ,   v e c 3   L ,   v e c 3   V )   { 
         f l o a t   r   =   s u r f a c e P r o p e r t i e s . r o u g h n e s s ; 
         v e c 3   F 0   =   s u r f a c e P r o p e r t i e s . s p e c C o l o r ; 
         v e c 3   N   =   s u r f a c e P r o p e r t i e s . n o r m a l ; 
         v e c 3   H   =   n o r m a l i z e ( L   +   V ) ; 
         f l o a t   N d o t L   =   s a t u r a t e ( d o t ( N ,   L ) ) ; 
         f l o a t   N d o t V   =   s a t u r a t e ( d o t ( N ,   V ) ) ; 
         f l o a t   N d o t H   =   s a t u r a t e ( d o t ( N ,   H ) ) ; 
         f l o a t   V d o t H   =   s a t u r a t e ( d o t ( V ,   H ) ) ; 
 
 # i f d e f   D E V I C E _ I S _ F A S T 
         / /   C o o k   t o r r a n c e   S p e c u l a r   w i t h   G G X   N D F .   N o t e :   t h e   N d o t L   a n d   N d o t V   f r o m   t h e   d e n o m i n a t o r   o f   C o o k   T o r r a n c e   c a n c e l s   w i t h   t h e   n u m e r a t o r   o f   G . 
         / /   T h e   p i   d i s a p p e a r s   a n d   t h e   N d o t L   a p p e a r s   t h e   s a m e   w a y   i t   d o e s   i n   t h e   d i f f u s e   l i g h t i n g   f u n c t i o n   ( B R D F   i s   m o d u l a t e d   b y   N d o t L   t o   g e t   a c t u a l   l i g h t i n g ) . 
         r e t u r n   D g g x ( N d o t H ,   r )   *   G g g x ( N d o t L ,   N d o t V ,   r )   *   0 . 2 5   *   N d o t L   *   f r e s n e l S c h l i c k ( V d o t H ,   F 0 ) ; 
 # e l s e   / /   # i f d e f   D E V I C E _ I S _ F A S T 
         / /   N o r m a l i z e d   B l i n n - P h o n g   f r o m   S e b   L a g a r d e :   h t t p s : / / s e b l a g a r d e . w o r d p r e s s . c o m / 2 0 1 1 / 0 8 / 1 7 / h e l l o - w o r l d / 
         f l o a t   s p e c P o w e r   =   e x p 2 ( 1 1 . 0   -   1 0 . 0   *   r ) ;     / /   S i m p l i f i e d   b a s e d   o n :   g l o s s   =   1   -   r 
         r e t u r n   ( s p e c P o w e r   *   0 . 1 2 5   +   0 . 2 5 )   *   p o w ( N d o t H ,   s p e c P o w e r )   *   N d o t L   *   f r e s n e l S c h l i c k ( V d o t H ,   F 0 ) ; 
 # e n d i f   / /   # e l s e   / /   # i f d e f   D E V I C E _ I S _ F A S T 
 } 
 
 L i g h t i n g C o m p o n e n t s   a c c u m u l a t e L i g h t ( L i g h t i n g C o m p o n e n t s   l i g h t i n g ,   L i g h t P r o p e r t i e s   l i g h t ,   S u r f a c e P r o p e r t i e s   s u r f a c e P r o p e r t i e s ,   v e c 3   V )   { 
         l i g h t i n g . d i r e c t D i f f u s e   + =   c a l c u l a t e D i r e c t D i f f u s e ( s u r f a c e P r o p e r t i e s ,   l i g h t . d i r e c t i o n )   *   l i g h t . c o l o r   *   l i g h t . a t t e n u a t i o n ; 
         l i g h t i n g . d i r e c t S p e c u l a r   + =   c a l c u l a t e D i r e c t S p e c u l a r ( s u r f a c e P r o p e r t i e s ,   l i g h t . d i r e c t i o n ,   V )   *   l i g h t . c o l o r   *   l i g h t . a t t e n u a t i o n ; 
         r e t u r n   l i g h t i n g ; 
 } 
 
 # i f n d e f   S U B S T A N C E 
 
 v e c 3   c a l c u l a t e I n d i r e c t D i f f u s e ( S u r f a c e P r o p e r t i e s   s u r f a c e P r o p e r t i e s )   { 
         r e t u r n   c a l c u l a t e D i f f u s e I r r a d i a n c e ( s u r f a c e P r o p e r t i e s . n o r m a l ) ; 
 } 
 
 f l o a t   c a l c u l a t e E n v M i p F r o m R o u g h n e s s ( f l o a t   r o u g h n e s s ,   D e b u g O p t i o n s   d e b u g )   { 
 # i f d e f   S C E N A R I U M 
         / /   I n   S c e n a r i u m   w e   u s e   a n   i m p o r t a n c e   s a m p l i n g   c o n v o l v e r   t o   r e n d e r   o u r   e n v   m a p s   i n   l a t - l o n g   f o r m a t . 
         / /   T h e   t o o l s   t h a t   g e n e r a t e   m i p s   m u s t   m a t c h   r o u g h n e s s E x p o n e n t I n v   a n d   m a x R o u g h n e s s M i p   a t   b a k e   t i m e . 
         / /   T h e   m a x R o u g h n e s s M i p   s p e c i f i e s   w h i c h   m i p   l e v e l   c o n t a i n s   t h e   r o u g h e s t   c o n v o l u t i o n .   T h i s   i s   u s u a l l y   n o t   t h e   l a s t   m i p ,   a s   a   s i n g l e   p i x e l   c a n ' t   r e p r e s e n t   t h e   n e c e s s a r y   v a r i a t i o n   i n   l i g h t i n g   a t   r o u g h n e s s = 1 . 
         / /   T h e   s h a p e   o f   t h e   r o u g h n e s s - t o - m i p   c u r v e   i s   c o n t r o l l e d   b y   t h e   e x p o n e n t ,   t o   a l l o c a t e   t h e   m o s t   a p p r o p r i a t e   a m o u n t   o f   d e t a i l   t o   e a c h   m i p . 
         / /   I f   t h e   r e s u l u t i o n   i s   t o o   l o w   f o r   a   g i v e n   c o n v o l u t i o n ,   t h e   r e f l e c t i o n s   w i l l   l o o k   a l i a s e d . 
         / /   I f   t h e   r e s o l u t i o n   i s   t o o   h i g h ,   y o u ' r e   n o t   g e t t i n g   a s   m a n y   u s e f u l   m i p   g r a d e s . 
         c o n s t   f l o a t   r o u g h n e s s E x p o n e n t I n v   =   1 . 0 / 1 . 5 ;   / /   N O T E :   w e   h a c k   t h e   e x p o n e n t   ( d o e s n ' t   q u i t e   m a t c h   t h e   e x p o n e n t   u s e d   a t   b a k e   t i m e )   t o   m a t c h   t h e   i m p o r t a n c e   s a m p l e d   r e f e r e n c e   b e t t e r .   I t   s e e m s   t h a t   d u e   t o   t h e   l o w - i s h   n u m b e r   o f   m i p s ,   a   s h a r p e r   m i p   o f t e n   g e t s   m i x e d   i n ,   a n d   t h a t   e f f e c t i v e l y   m a k e s   t h e   r o u g h n e s s   l o o k   s h a r p e r .   T h i s   h a c k   c o m p e n s a t e s   a   b i t .   B o t t o m   o f   t h i s   p a g e   m i g h t   a l s o   o f f e r   a   c l u e   t o   i n v e s t i g a t e :   h t t p s : / / d o c s . k n a l d t e c h . c o m / d o k u . p h p ? i d = s p e c u l a r _ l y s 
         c o n s t   f l o a t   m a x R o u g h n e s s M i p   =   5 . 0 ; 
         f l o a t   m i p   =   s a t u r a t e ( p o w ( r o u g h n e s s ,   r o u g h n e s s E x p o n e n t I n v ) )   *   m a x R o u g h n e s s M i p ; 
 # e l s e 
         / /   I n   M a y a   w e   u s e   c u b e m a p s   c o n v o l v e d   b y   L y s . 
         / /   m a x R o u g h n e s s M i p   m u s t   m a t c h   t h e   r o u g h e s t   m i p   a s   s e t   i n   L y s . 
         f l o a t   g l o s s   =   1 . 0   -   r o u g h n e s s ; 
         f l o a t   l y s R o u g h n e s s   =   1 . 0   -   g l o s s * g l o s s ;     / /   M a t c h   t h e   e n v   m a p   r o u g h n e s   c u r v e   o f   L y s   t o   p r o p e r   G G X   ( n o t   s u r e   w h y   L y s   e x p e c t s   r o u g h n e s s   t o   b e   t h e   i n v e r s e   o f   g l o s s   s q u a r e d ,   b u t   t h i s   i s   t h e   c l o s e s t   m a t c h   I   c a n   g e t ) .   N e e d   t o   l o o k   f u r t h e r   i n t o   t h i s :   h t t p s : / / d o c s . k n a l d t e c h . c o m / d o k u . p h p ? i d = s p e c u l a r _ l y s 
         c o n s t   f l o a t   m a x R o u g h n e s s M i p   =   7 . 0 ; 
         f l o a t   m i p   =   l y s R o u g h n e s s   *   m a x R o u g h n e s s M i p ; 
 # e n d i f 
 
 # i f d e f   D E B U G 
         i f   ( d e b u g . e n v M i p   > =   0 . 0 )   { 
                 m i p   =   d e b u g . e n v M i p ; 
         } 
 # e n d i f 
 
         r e t u r n   m i p ; 
 } 
 
 / /   M a k e s   c u b e m a p   r e f l e c t i o n s   b e h a v e   c l o s e r   t o   t h e   r e f e r e n c e ,   t a k i n g   i n t o   a c c o u n t   v i e w   v e c t o r   d e p e n d e n c e . 
 / /   I e :   c o r r e c t   f o r   t h e   f a c t   t h a t   t h e   e n v   m a p   i s   p r e c o n v o l v e d   a s s u m i n g   V   = =   N ,   w h i c h   d o e s   n o t   h o l d   i n   g e n e r a l . 
 / /   T h e   i d e a   c a m e   f r o m   F r o s t b i t e ,   b u t   o u r   v e r s i o n   i s   m u c h   s i m p l i f i e d   a n d   h a s   l e s s   a r t i f a c t s   ( o u r s   d o e s n ' t   w a r p   r e f l e c t i o n s   o n   s m o o t h   s u r f a c e s ) . 
 / /   h t t p : / / w w w . f r o s t b i t e . c o m / w p - c o n t e n t / u p l o a d s / 2 0 1 4 / 1 1 / c o u r s e _ n o t e s _ m o v i n g _ f r o s t b i t e _ t o _ p b r _ v 2 . p d f 
 v e c 3   g e t S p e c u l a r D o m i n a n t D i r ( v e c 3   N ,   v e c 3   R ,   f l o a t   r o u g h n e s s ,   D e b u g O p t i o n s   d e b u g )   { 
 # i f d e f   D E V I C E _ I S _ F A S T 
 # i f d e f   D E B U G 
         i f   ( d e b u g . e n v B e n t N o r m a l ) 
 # e n d i f 
         { 
                 f l o a t   l e r p F a c t o r   =   r o u g h n e s s   *   r o u g h n e s s   *   r o u g h n e s s ; 
                 r e t u r n   n o r m a l i z e ( m i x ( R ,   N ,   l e r p F a c t o r ) ) ; 
         } 
 # e n d i f   / /   # i f d e f   D E V I C E _ I S _ F A S T 
         r e t u r n   R ; 
 } 
 
 / /   A p p r o x i m a t e s   t h e   e f f e c t s   o f   f r e s n e l   a n d   G   f o r   e n v i r o n m e n t   m a p s . 
 v e c 3   e n v B R D F A p p r o x ( S u r f a c e P r o p e r t i e s   s u r f a c e P r o p e r t i e s ,   f l o a t   N d o t V ,   D e b u g O p t i o n s   d e b u g )   { 
 # i f d e f   D E V I C E _ I S _ F A S T 
 # i f d e f   D E B U G 
         b o o l   u s e B R D F A p p r o x   =   d e b u g . e n v B R D F A p p r o x ; 
 # e l s e 
         b o o l   u s e B R D F A p p r o x   =   t r u e ; 
 # e n d i f 
 # e l s e   / /   # i f d e f   D E V I C E _ I S _ F A S T 
         b o o l   u s e B R D F A p p r o x   =   f a l s e ; 
 # e n d i f   / /   # e l s e   / /   # i f d e f   D E V I C E _ I S _ F A S T 
 
         i f   ( u s e B R D F A p p r o x )   { 
                 / /   F r o m   U E 4 ,   b a s e d   o n   L a z a r o v :   h t t p s : / / w w w . u n r e a l e n g i n e . c o m / b l o g / p h y s i c a l l y - b a s e d - s h a d i n g - o n - m o b i l e 
                 c o n s t   v e c 4   c 0   =   v e c 4 ( - 1 . 0 ,   - 0 . 0 2 7 5 ,   - 0 . 5 7 2 ,   0 . 0 2 2 ) ; 
                 c o n s t   v e c 4   c 1   =   v e c 4 ( 1 . 0 ,   0 . 0 4 2 5 ,   1 . 0 4 ,   - 0 . 0 4 ) ; 
                 v e c 4   r   =   s u r f a c e P r o p e r t i e s . r o u g h n e s s   *   c 0   +   c 1 ; 
                 f l o a t   a 0 0 4   =   m i n ( r . x   *   r . x ,   e x p 2 ( - 9 . 2 8   *   N d o t V ) )   *   r . x   +   r . y ; 
                 v e c 2   A B   =   v e c 2 ( - 1 . 0 4 ,   1 . 0 4 )   *   a 0 0 4   +   r . z w ; 
                 r e t u r n   s u r f a c e P r o p e r t i e s . s p e c C o l o r   *   A B . x   +   A B . y ; 
         } 
         e l s e   { 
                 / /   F r o m   S e b   L a g a r d e :   h t t p s : / / s e b l a g a r d e . w o r d p r e s s . c o m / 2 0 1 1 / 0 8 / 1 7 / h e l l o - w o r l d / 
                 / /   D o   f r e s n e l   ( F ) ,   b u t   d r i v e   d o w n   t h e   b r i g h t n e s s   a t   t h e   e d g e   a s   t h e   r o u g h n e s s   g e t s   h i g h e r   ( G ) .   W i t h o u t   t h i s   y o u   g e t   g l o w i n g   e d g e s   o n   r o u g h   m a t e r i a l s . 
                 v e c 3   f r e s n e l M a x   =   m a x ( v e c 3 ( 1 . 0   -   s u r f a c e P r o p e r t i e s . r o u g h n e s s ) ,   s u r f a c e P r o p e r t i e s . s p e c C o l o r ) ; 
                 r e t u r n   f r e s n e l S c h l i c k S u b ( N d o t V ,   s u r f a c e P r o p e r t i e s . s p e c C o l o r ,   f r e s n e l M a x ) ; 
         } 
 } 
 
 # i f n d e f   M O B I L E 
 # i n c l u d e   < s t d _ i m p o r t a n c e _ s a m p l i n g . g l s l > 
 # e n d i f 
 
 / /   C a l c u l a t e s   e n v i r o n m e n t   r e f l e c t i o n s 
 v e c 3   c a l c u l a t e I n d i r e c t S p e c u l a r ( S u r f a c e P r o p e r t i e s   s u r f a c e P r o p e r t i e s ,   v e c 3   V ,   D e b u g O p t i o n s   d e b u g )   { 
 # i f d e f   M A Y A 
         i f   ( d e b u g . e n v S a m p l i n g G r o u n d T r u t h )   { 
                 r e t u r n   c a l c u l a t e I n d i r e c t S p e c u l a r G r o u n d T r u t h ( s u r f a c e P r o p e r t i e s ,   V ,   d e b u g ) ;     / /   A l l o w   t o   c o m p a r e   t h e   r e s u l t s   o f   e n v i r o n m e n t   m a p p i n g   c a l c u l a t e d   b e l o w ,   v e r s u s   t h e   r e a l t i m e   i m p o r t a n c e   s a m p l e d   e v a l u a t i o n   o f   t h e   f u l l   B R D F . 
         } 
 # e n d i f 
 
         v e c 3   N   =   s u r f a c e P r o p e r t i e s . n o r m a l ; 
 
 # i f d e f   M A Y A 
         / /   O r i e n t   t h e   e n v m a p   l i k e   S u b s t a n c e   a n d   S c e n a r i u m . 
         N   =   v e c 3 ( - N . z ,   N . y ,   - N . x ) ; 
         V   =   v e c 3 ( - V . z ,   V . y ,   - V . x ) ; 
 # e n d i f 
 
         v e c 3   R   =   r e f l e c t ( - V ,   N ) ; 
 
         R   =   g e t S p e c u l a r D o m i n a n t D i r ( N ,   R ,   s u r f a c e P r o p e r t i e s . r o u g h n e s s ,   d e b u g ) ; 
 
         f l o a t   m i p   =   c a l c u l a t e E n v M i p F r o m R o u g h n e s s ( s u r f a c e P r o p e r t i e s . r o u g h n e s s ,   d e b u g ) ; 
 
         v e c 3   e n v m a p   =   s a m p l e S p e c u l a r E n v m a p L o d ( R ,   m i p ) ; 
 
 # i f d e f   M A Y A 
         i f   ( d e b u g . e n v S a m p l i n g )   { 
                 e n v m a p   =   p r e f i l t e r E n v m a p ( s u r f a c e P r o p e r t i e s . r o u g h n e s s ,   R ,   d e b u g ) ;     / /   A l l o w   t o   c o m p a r e   t h e   r e s u l t s   o f   t h e   e n v m a p   s a m p l e d   a b o v e ,   v e r s u s   t h e   r e a l t i m e   i m p o r t a n c e   s a m p l e d   r e f e r e n c e . 
         } 
 # e n d i f 
 
         r e t u r n   e n v m a p   *   e n v B R D F A p p r o x ( s u r f a c e P r o p e r t i e s ,   a b s ( d o t ( N ,   V ) ) ,   d e b u g ) ;   / /   W e   u s e   a b s   i n s t e a d   o f   s a t u r a t e   h e r e   t o   a v o i d   o v e r - b r i g h t e n i n g   t h e   b a c k   s i d e s   o f   n o r m a l   m a p   b u m p s ,   w h i c h   w o u l d   n o t   b e   v i s i b l e   i n   r e a l   l i f e .   S a t u r a t e   j u s t   c l a m p s   t h e   b r i g h t n e s s   o f   f r e s n e l   o n   t h e   b a c k   s i d e s   o f   b u m p s   t o   f u l l   b r i g h t ,   w h e r e a s   a b s   p e a k s   a n d   t r a i l s   o f f ,   m a k i n g   t h e   a r t i f a c t   s l i g h t l y   l e s s   o f f e n s i v e . 
 } 
 # e n d i f   / /   # i f n d e f   S U B S T A N C E 
 
 / /   T h i s   f u n c t i o n   d e r i v e s   s u r f a c e   p r o p e r t i e s   t h a t   w e r e   n o t   i n   t h e   i n p u t   m a t e r i a l   d a t a   ( e x :   i n   a   m e t a l l i c   m a t e r i a l   m o d e l ,   s p e c   c o l o r ,   i e :   F 0 ,   i s   d e r i v e d   f r o m   a l b e d o   a n d   t h e   m a t a l l i c   p a r a m e t e r ) . 
 S u r f a c e P r o p e r t i e s   c a l c u l a t e D e r i v e d S u r f a c e P r o p e r t i e s ( S u r f a c e P r o p e r t i e s   s u r f a c e P r o p e r t i e s ,   D e b u g O p t i o n s   d e b u g )   { 
 # i f d e f   D E B U G 
         i f   ( d e b u g . e n a b l e M e t a l l i c )   { 
                 i f   ( d e b u g . f r i n g e l e s s M e t a l l i c )   { 
 # e n d i f 
                         / /   T h e   c l a s s i c   w a y   o f   b l e n d i n g   b e t w e e n   m e t a l s   a n d   d i e l e c t r i c s   c a u s e s   b r i g h t   f r i n g e s   a t   t h e   t r a n s i t i o n . 
                         / /   T h i s   s a m e   b l e n d   i n   t h e   s p e c u l a r   m o d e l   d o e s   n o t   c a u s e   s u c h   f i n g i n g ,   a n d   w e   o b s e r v e   t h a t   t h e   s h a d i n g   r e s u l t   i s   d a r k e r   i n   t h e   m i d d l e   o f   t h e   b l e n d   r a n g e   i n   t h e   s p e c u l a r   m o d e l   t h a n   i n   t h e   m e t a l l i c   m o d e l . 
                         / /   I e :   t h e   s u m   o f   t h e   d i f f u s e   a n d   s p e c u l a r   l i g h t i n g   w i t h   t h e   c l a s s i c   m e t a l l i c   b l e n d   i s   b r i g h t e r   t h a n   i t   s h o u l d   b e   i n   t h e   m i d d l e   o f   t h e   b l e n d   r a n g e . 
                         / /   K n o w i n g   t h a t   t h e   u n d e s i r a b l e   f r i n g e   i s   b r i g h t e r   t h a n   t h e   r e f e r e n c e ,   w e   r a m p   d o w n   t h e   b r i g h t n e s s   o f   d i f f u s e   a l b e d o   a n d   s p e c u l a r   c o l o r   f a s t e r   b y   m u l t i p l y i n g   i n   a n   e x t r a   m e t a l l i c   t e r m . 
                         / /   T h e   r e s u l t   o f   t h i s   i s   q u i t e   c l o s e   t o   t h e   r e f e r e n c e ,   t h o u g h   i t ' s   i m p o s s i b l e   t o   d o   " c o r r e c t "   m a t e r i a l   b l e n d i n g   i n   t h e   m e t a l l i c   m o d e l   s i n c e   d i f f u s e   a n d   s p e c u l a r   c o l o r s   a r e   c o n f o u n d e d . 
                         s u r f a c e P r o p e r t i e s . s p e c C o l o r   =   m i x ( v e c 3 ( 0 . 0 4 ) ,   s u r f a c e P r o p e r t i e s . a l b e d o * s u r f a c e P r o p e r t i e s . m e t a l l i c ,   s u r f a c e P r o p e r t i e s . m e t a l l i c ) ; 
                         s u r f a c e P r o p e r t i e s . a l b e d o   =   m i x ( s u r f a c e P r o p e r t i e s . a l b e d o * ( 1 . 0 - s u r f a c e P r o p e r t i e s . m e t a l l i c ) ,   v e c 3 ( 0 . 0 ) ,   s u r f a c e P r o p e r t i e s . m e t a l l i c ) ; 
 # i f d e f   D E B U G 
                 }   e l s e   { 
                         s u r f a c e P r o p e r t i e s . s p e c C o l o r   =   m i x ( v e c 3 ( 0 . 0 4 ) ,   s u r f a c e P r o p e r t i e s . a l b e d o ,   s u r f a c e P r o p e r t i e s . m e t a l l i c ) ; 
                         s u r f a c e P r o p e r t i e s . a l b e d o   =   m i x ( s u r f a c e P r o p e r t i e s . a l b e d o ,   v e c 3 ( 0 . 0 ) ,   s u r f a c e P r o p e r t i e s . m e t a l l i c ) ; 
                 } 
         } 
 # e n d i f 
         r e t u r n   s u r f a c e P r o p e r t i e s ; 
 } 
 
 / /   T h i s   f u n c t i o n   d o e s   t h e   f i n a l   l o g i c a l   c o m b i n a t i o n   o f   s u r f a c e   p r o p e r t i e s   a n d   l i g h t i n g . 
 v e c 3   c o m b i n e S u r f a c e P r o p e r t i e s W i t h L i g h t i n g ( S u r f a c e P r o p e r t i e s   s u r f a c e P r o p e r t i e s ,   L i g h t i n g C o m p o n e n t s   l i g h t i n g ,   b o o l   e n a b l e P r e m u l t i p l i e d A l p h a )   { 
         v e c 3   d i f f u s e   =   s u r f a c e P r o p e r t i e s . a l b e d o   *   ( l i g h t i n g . d i r e c t D i f f u s e   +   l i g h t i n g . i n d i r e c t D i f f u s e   *   s u r f a c e P r o p e r t i e s . a o ) ; 
         v e c 3   s p e c u l a r   =   l i g h t i n g . d i r e c t S p e c u l a r   +   l i g h t i n g . i n d i r e c t S p e c u l a r ; 
         v e c 3   e m i t t e d   =   s u r f a c e P r o p e r t i e s . e m i s s i v e ; 
         v e c 3   t r a n s m i t t e d   =   l i g h t i n g . t r a n s m i t t e d ; 
 
         i f   ( e n a b l e P r e m u l t i p l i e d A l p h a )   { 
                 d i f f u s e   * =   s u r f a c e P r o p e r t i e s . o p a c i t y ; 
         } 
 
         v e c 3   r e s u l t   =   d i f f u s e   +   s p e c u l a r   +   e m i t t e d   +   t r a n s m i t t e d ; 
 
         r e t u r n   r e s u l t ; 
 } 
 
 v e c 4   d e b u g O u t p u t ( v e c 4   r e g u l a r O u t p u t ,   S u r f a c e P r o p e r t i e s   s u r f a c e P r o p e r t i e s ,   L i g h t i n g C o m p o n e n t s   l i g h t i n g ,   D e b u g O p t i o n s   d e b u g )   { 
         v e c 4   r e s u l t   =   r e g u l a r O u t p u t ; 
         r e s u l t . a   =   1 . 0 ; 
 
         i f   ( d e b u g . a l b e d o )   { 
                 r e s u l t . x y z   =   s u r f a c e P r o p e r t i e s . a l b e d o ; 
         }   e l s e   i f   ( d e b u g . s p e c C o l o r )   { 
                 r e s u l t . x y z   =   s u r f a c e P r o p e r t i e s . s p e c C o l o r ; 
         }   e l s e   i f   ( d e b u g . r o u g h n e s s )   { 
                 r e s u l t . x y z   =   v e c 3 ( s r g b T o L i n e a r ( s u r f a c e P r o p e r t i e s . r o u g h n e s s ) ) ; 
         }   e l s e   i f   ( d e b u g . n o r m a l )   { 
                 r e s u l t . x y z   =   s r g b T o L i n e a r ( s u r f a c e P r o p e r t i e s . n o r m a l   *   0 . 5   +   0 . 5 ) ; 
         }   e l s e   i f   ( d e b u g . a o )   { 
                 r e s u l t . x y z   =   s u r f a c e P r o p e r t i e s . a o ; 
         }   e l s e   { 
                 r e s u l t   =   r e g u l a r O u t p u t ; 
         } 
 
         r e t u r n   r e s u l t ; 
 } 
 
 v e c 3   l i n e a r T o n e M a p p i n g ( v e c 3   x )   { 
         / /   M o d i f i e d   v e r s i o n   o f   J o h n   H a b l e ' s   c u r v e   t h a t   i s   l i n e a r   e x c e p t   f o r   t h e   s h o u l d e r   r e g i o n ,   s o   i t   a v o i d s   h i g h l i g h t   c l i p p i n g   ( s e e   c o m m e n t   s e c t i o n   i n   h t t p s : / / m y n a m e i s m j p . w o r d p r e s s . c o m / 2 0 1 0 / 0 4 / 3 0 / a - c l o s e r - l o o k - a t - t o n e - m a p p i n g / ) 
         f l o a t   a   =   1 . 8 ;     / /   M i d 
         f l o a t   b   =   1 . 4 ;     / /   T o e 
         f l o a t   c   =   0 . 5 ;     / /   S h o u l d e r 
         f l o a t   d   =   1 . 5 ;     / /   M i d 
 
         r e t u r n   ( x   *   ( a   *   x   +   b ) )   /   ( x   *   ( a   *   x   +   c )   +   d ) ; 
 } 
 
 v e c 3   a c e s T o n e M a p p i n g ( v e c 3   x )   { 
         / /   A p p r o x i m a t e d   A C E S   R R T   +   O D T   c u r v e   f r o m   h e r e :   h t t p s : / / k n a r k o w i c z . w o r d p r e s s . c o m / 2 0 1 6 / 0 1 / 0 6 / a c e s - f i l m i c - t o n e - m a p p i n g - c u r v e / 
         f l o a t   a   =   2 . 5 1 ; 
         f l o a t   b   =   0 . 0 3 ; 
         f l o a t   c   =   2 . 4 3 ; 
         f l o a t   d   =   0 . 5 9 ; 
         f l o a t   e   =   0 . 1 4 ; 
         r e t u r n   ( x   *   ( a   *   x   +   b ) )   /   ( x   *   ( c   *   x   +   d )   +   e ) ; 
 } 
 
 / /   s t d _ p b r . g l s l   - -   E N D 
 / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / 
 
 
 v e c 3   c a l c u l a t e I n d i r e c t D i f f u s e ( S u r f a c e P r o p e r t i e s   s u r f a c e P r o p e r t i e s )   { 
         r e t u r n   e n v I r r a d i a n c e ( s u r f a c e P r o p e r t i e s . n o r m a l ) ; 
 } 
 
 v e c 3   c a l c u l a t e I n d i r e c t S p e c u l a r ( S u r f a c e P r o p e r t i e s   s u r f a c e P r o p e r t i e s ,   L o c a l V e c t o r s   v e c t o r s )   { 
         r e t u r n   p b r C o m p u t e S p e c u l a r ( v e c t o r s ,   s u r f a c e P r o p e r t i e s . s p e c C o l o r ,   s u r f a c e P r o p e r t i e s . r o u g h n e s s ) ; 
 } 
 
 / /   T h i s   f u n c t i o n   e v a l u a t e s   a l l   l i g h t i n g   f o r   a   s u r f a c e   b a s e d   o n   i t s   s u r f a c e   p r o p e r t i e s   a n d   a l l   t h e   e x i s t i n g   l i g h t i n g   i n   t h e   e n v i r o n m e n t   ( m u l t i p l e   l i g h t s ,   a m b i e n t ,   r e f l e c t i o n s ,   e t c ) . 
 L i g h t i n g C o m p o n e n t s   e v a l u a t e L i g h t i n g ( S u r f a c e P r o p e r t i e s   s u r f a c e P r o p e r t i e s ,   L o c a l V e c t o r s   v e c t o r s ,   D e b u g O p t i o n s   d e b u g )   { 
         L i g h t i n g C o m p o n e n t s   l i g h t i n g ; 
 
         v e c 3   N   =   s u r f a c e P r o p e r t i e s . n o r m a l ; 
         v e c 3   L   =   v e c 3 ( 0 ,   1 ,   0 ) ; / / n o r m a l i z e ( - l i g h t 0 D i r ) ; 
         v e c 3   V   =   v e c t o r s . e y e ; 
         v e c 3   H   =   n o r m a l i z e ( L + V ) ; 
         v e c 3   R   =   r e f l e c t ( - V ,   N ) ; 
 
         l i g h t i n g . d i r e c t D i f f u s e   =   v e c 3 ( 0 . 0 ) ; 
         l i g h t i n g . d i r e c t S p e c u l a r   =   v e c 3 ( 0 . 0 ) ; 
         l i g h t i n g . i n d i r e c t D i f f u s e   =   c a l c u l a t e I n d i r e c t D i f f u s e ( s u r f a c e P r o p e r t i e s ) ; 
         l i g h t i n g . i n d i r e c t S p e c u l a r   =   c a l c u l a t e I n d i r e c t S p e c u l a r ( s u r f a c e P r o p e r t i e s ,   v e c t o r s ) ; 
         l i g h t i n g . e m i t t e d   =   s u r f a c e P r o p e r t i e s . e m i s s i v e ; 
 
         / /   D e b u g   s l i d e r s 
         l i g h t i n g . d i r e c t D i f f u s e   * =   d e b u g . d i r e c t D i f f u s e ; 
         l i g h t i n g . d i r e c t S p e c u l a r   * =   d e b u g . d i r e c t S p e c u l a r ; 
         l i g h t i n g . i n d i r e c t D i f f u s e   * =   d e b u g . i n d i r e c t D i f f u s e ; 
         l i g h t i n g . i n d i r e c t S p e c u l a r   * =   d e b u g . i n d i r e c t S p e c u l a r ; 
 
         r e t u r n   l i g h t i n g ; 
 } 
 
 D e b u g O p t i o n s   s e t u p D e b u g O p t i o n s ( )   { 
         D e b u g O p t i o n s   d e b u g   =   d e f a u l t D e b u g O p t i o n s ( ) ; 
 
         d e b u g . f r i n g e l e s s M e t a l l i c   =   D e b u g F r i n g e l e s s M e t a l l i c ; 
         d e b u g . a c e s T o n e M a p p i n g   =   D e b u g A c e s T o n e M a p p i n g ; 
         d e b u g . l i n e a r T o n e M a p p i n g   =   D e b u g L i n e a r T o n e M a p p i n g ; 
         d e b u g . a l b e d o   =   D e b u g A l b e d o ; 
         d e b u g . s p e c C o l o r   =   D e b u g S p e c C o l o r ; 
         d e b u g . r o u g h n e s s   =   D e b u g R o u g h n e s s ; 
         d e b u g . n o r m a l   =   D e b u g N o r m a l ; 
         d e b u g . a o   =   D e b u g A o ; 
         d e b u g . d i r e c t D i f f u s e   =   D e b u g D i r e c t D i f f u s e ; 
         d e b u g . d i r e c t S p e c u l a r   =   D e b u g D i r e c t S p e c u l a r ; 
         d e b u g . i n d i r e c t D i f f u s e   =   D e b u g I n d i r e c t D i f f u s e ; 
         d e b u g . i n d i r e c t S p e c u l a r   =   D e b u g I n d i r e c t S p e c u l a r ; 
 
         r e t u r n   d e b u g ; 
 } 
 
 
 / / -   S h a d e r   e n t r y   p o i n t . 
 v o i d   s h a d e ( V 2 F   i n p u t s ) 
 { 
         / /   A p p l y   p a r a l l a x   o c c l u s i o n   m a p p i n g   i f   p o s s i b l e 
         v e c 3   v i e w T S   =   w o r l d S p a c e T o T a n g e n t S p a c e ( g e t E y e V e c ( i n p u t s . p o s i t i o n ) ,   i n p u t s ) ; 
         a p p l y P a r a l l a x O f f s e t ( i n p u t s ,   v i e w T S ) ; 
 
         L o c a l V e c t o r s   v e c t o r s   =   c o m p u t e L o c a l F r a m e ( i n p u t s ) ; 
 
         D e b u g O p t i o n s   d e b u g   =   s e t u p D e b u g O p t i o n s ( ) ; 
 
         / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / 
         / /   S e t   u p   s u r f a c e   p r o p e r t i e s 
 
         S u r f a c e P r o p e r t i e s   s u r f a c e P r o p e r t i e s ; 
         s u r f a c e P r o p e r t i e s . a l b e d o   =   g e t B a s e C o l o r ( b a s e c o l o r _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
         s u r f a c e P r o p e r t i e s . o p a c i t y   =   g e t O p a c i t y ( o p a c i t y _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
         s u r f a c e P r o p e r t i e s . r o u g h n e s s   =   g e t R o u g h n e s s ( r o u g h n e s s _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
         s u r f a c e P r o p e r t i e s . m e t a l l i c   =   g e t M e t a l l i c ( m e t a l l i c _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
         s u r f a c e P r o p e r t i e s . a o   =   v e c 3 ( g e t A O ( i n p u t s . s p a r s e _ c o o r d ) ) ; 
         s u r f a c e P r o p e r t i e s . n o r m a l   =   v e c t o r s . n o r m a l ; 
 
         / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / 
         / /   E v a l u a t e   l i g h t i n g 
 
         s u r f a c e P r o p e r t i e s   =   c a l c u l a t e D e r i v e d S u r f a c e P r o p e r t i e s ( s u r f a c e P r o p e r t i e s ,   d e b u g ) ; 
 
         L i g h t i n g C o m p o n e n t s   l i g h t i n g   =   e v a l u a t e L i g h t i n g ( s u r f a c e P r o p e r t i e s ,   v e c t o r s ,   d e b u g ) ; 
 
         v e c 3   r e s u l t   =   c o m b i n e S u r f a c e P r o p e r t i e s W i t h L i g h t i n g ( s u r f a c e P r o p e r t i e s ,   l i g h t i n g ,   t r u e ) ; 
 
         / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / 
         / /   O u t p u t 
 
         i f   ( d e b u g . a c e s T o n e M a p p i n g )   { 
                 r e s u l t   =   a c e s T o n e M a p p i n g ( r e s u l t ) ; 
         }   e l s e   i f   ( d e b u g . l i n e a r T o n e M a p p i n g )   { 
                 r e s u l t   =   l i n e a r T o n e M a p p i n g ( r e s u l t ) ; 
         } 
 
         v e c 4   c o l o r O u t ; 
         c o l o r O u t   =   v e c 4 ( r e s u l t ,   s u r f a c e P r o p e r t i e s . o p a c i t y ) ; 
 
         c o l o r O u t   =   d e b u g O u t p u t ( c o l o r O u t ,   s u r f a c e P r o p e r t i e s ,   l i g h t i n g ,   d e b u g ) ; 
 
         a l p h a O u t p u t ( c o l o r O u t . a ) ; 
         d i f f u s e S h a d i n g O u t p u t ( c o l o r O u t . r g b ) ; 
 } 
 # l i n e   2 9   0 
 
 v o i d   m a i n ( v o i d ) 
 { 
 	 V 2 F   i n p u t s ; 
 	 f i l l V 2 F ( i n p u t s ) ; 
 
 	 f i l l D e f a u l t O u t p u t s ( ) ; 
 
 	 / /   C a l l   u s e r   d e f i n e d   s h a d i n g   m e t h o d 
 	 s h a d e ( i n p u t s ) ; 
 	 o c o l o r 0 . r g b   =   o u t p u t s _ . e m i s s i v e C o l o r   +   o u t p u t s _ . a l b e d o   *   o u t p u t s _ . d i f f u s e S h a d i n g   +   o u t p u t s _ . s p e c u l a r S h a d i n g ; 
 	 o c o l o r 0 . a   =   o u t p u t s _ . a l p h a ; 
 
 	 i f   ( a l g _ a l p h a _ t e s t   & &   o c o l o r 0 . a   <   1 . 0 )   d i s c a r d ; 
 
 	 / /   Q u i c k   m a s k i n g 
 	 i f   ( a l g _ h a s _ s e l e c t i o n ) 
 	 { 
 	 	 f l o a t   s e l e c t i o n M a s k   =   1 . 0   -   t e x t u r e ( a l g _ s e l e c t i o n _ t e x ,   i n p u t s . t e x _ c o o r d ) . r ; 
 
 	 	 i f   ( a l g _ s e l e c t i o n _ i s _ e d i t e d ) 
 	 	 { 
 	 	 	 v e c 2   g r i d _ c o o r d   =   s t e p ( f r a c t ( i n p u t s . t e x _ c o o r d * 3 2 . 0 ) , v e c 2 ( 0 . 5 ) ) ; 
 	 	 	 v e c 3   c h e c k b o a r d   =   v e c 3 ( a b s ( g r i d _ c o o r d . y - g r i d _ c o o r d . x ) * 0 . 4 + 0 . 3 ) ; 
 	 	 	 o c o l o r 0 . r g b   =   m i x ( o c o l o r 0 . r g b ,   c h e c k b o a r d ,   0 . 1 5 ) ; 
 	 	 } 
 	 	 e l s e 
 	 	 { 
 	 	 	 s e l e c t i o n M a s k   * =   Q U I C K _ M A S K _ C O L O R . a ; 
 	 	 } 
 
 	 	 o c o l o r 0 . r g b   =   m i x ( o c o l o r 0 . r g b ,   Q U I C K _ M A S K _ C O L O R . r g b ,   s e l e c t i o n M a s k ) ; 
 	 } 
 
 	 i f   ( a l g _ d i t h e r )   o c o l o r 0   =   d i t h e r P r e S R G B ( o c o l o r 0 ) ; 
 # i f   ! d e f i n e d ( D I S A B L E _ F R A M E B U F F E R _ S R G B _ C O N V E R S I O N ) 
 	 o c o l o r 0   =   l i n e a r 2 s R G B O p t ( o c o l o r 0 ) ; 
 # e n d i f 
 } 
