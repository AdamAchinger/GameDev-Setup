        r e s o u r c e _ v e r s i o n       /4b13dc4b109e13793ee3ac25367bddd09a36f379.shader   , l o c a l _ u n v e r s i o n e d _ k e y s           0 l a s t _ v a l i d _ v e r t e x _ s o u r c e   
   
? # v e r s i o n   4 5 0 
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
  ? # v e r s i o n   4 5 0 
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
 / / -   A l l e g o r i t h m i c   A d o b e   S t a n d a r d   M a t e r i a l   s h a d e r 
 / / -   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r i e s . 
 # l i n e   0   7 
 / / -   l i b - a l p h a . g l s l 
 / / -   = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` a l p h a K i l l ` 
 / / - 
 
 # l i n e   0   8 
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
 # l i n e   2 5   8 
 # l i n e   2 6   8 
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
 # l i n e   8   7 
 # l i n e   0   1 0 
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
 # l i n e   1 2   1 0 
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
 # l i n e   9   7 
 
 / / -   O p a c i t y   m a p ,   p r o v i d e d   b y   t h e   e n g i n e . 
 / / :   p a r a m   a u t o   c h a n n e l _ o p a c i t y 
 u n i f o r m   S a m p l e r S p a r s e   o p a c i t y _ t e x ; 
 
 / / -   A l p h a   t e s t   t h r e s h o l d . 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   0 . 3 3 , 
 / / :       " l a b e l " :   " A l p h a   t h r e s h o l d " , 
 / / :       " m i n " :   0 . 0 , 
 / / :       " m a x " :   1 . 0 , 
 / / :       " g r o u p " :   " C o m m o n   P a r a m e t e r s " 
 / / :   } 
 u n i f o r m   f l o a t   a l p h a _ t h r e s h o l d ; 
 
 / / -   A l p h a   t e s t   d i t h e r i n g . 
 / / :   p a r a m   c u s t o m   { 
 / / :       " d e f a u l t " :   f a l s e , 
 / / :       " l a b e l " :   " A l p h a   d i t h e r i n g " , 
 / / :       " g r o u p " :   " C o m m o n   P a r a m e t e r s " 
 / / :   } 
 u n i f o r m   b o o l   a l p h a _ d i t h e r ; 
 
 / / -   E m u l a t e   a l p h a   t e s t   :   d i s c a r d   c u r r e n t   f r a g m e n t   i f 
 / / -   i t s   o p a c i t y   i s   b e l o w   a   u s e r   d e f i n e d   t h r e s h o l d . 
 / / -   S h o u l d   b e   c a l l e d   A F T E R   t e x t u r e   s a m p l i n g   c a l l s :   i t   c a n   b r e a k   d e r i v a t i v e s 
 v o i d   a l p h a K i l l ( f l o a t   a l p h a ) 
 { 
     f l o a t   t h r e s h o l d   =   a l p h a _ d i t h e r   ?   g e t B l u e N o i s e T h r e s h o l d T e m p o r a l ( )   :   a l p h a _ t h r e s h o l d ; 
     i f   ( a l p h a   <   t h r e s h o l d )   d i s c a r d ; 
 } 
 
 v o i d   a l p h a K i l l ( S p a r s e C o o r d   c o o r d ) 
 { 
     a l p h a K i l l ( g e t O p a c i t y ( o p a c i t y _ t e x ,   c o o r d ) ) ; 
 } 
 
 / / -   [ D O C - O F F ]   D e p r e c a t e d ,   k e p t   f o r   c o m p a t i b i l i t y   r e a s o n s 
 v o i d   a l p h a K i l l ( v e c 2   t e x _ c o o r d ) 
 { 
     a l p h a K i l l ( g e t O p a c i t y ( o p a c i t y _ t e x . t e x ,   t e x _ c o o r d ) ) ; 
 } 
 / / -   [ D O C - O N ] 
 
 # l i n e   5   6 
 # l i n e   0   1 1 
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
 # l i n e   0   1 2 
 / / -   l i b - e n v . g l s l 
 / / -   = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` e n v S a m p l e L O D ` 
 / / -   ` e n v I r r a d i a n c e ` 
 / / - 
 / / -   N e e d e d   f o r   m a t h   c o n s t a n t s 
 # l i n e   9   1 2 
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
 # l i n e   4 8   1 1 
 # l i n e   0   1 3 
 / / -   l i b - e m i s s i v e . g l s l 
 / / -   = = = = = = = = = = = = = = = = = 
 / / - 
 / / -   * * P u b l i c   F u n c t i o n s : * * 
 / / -   ` p b r C o m p u t e E m i s s i v e ` 
 / / - 
 / / -   I m p o r t   f r o m   l i b r a r y 
 # l i n e   8   1 3 
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
 # l i n e   4 9   1 1 
 # l i n e   5 0   1 1 
 # l i n e   0   1 4 
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
 # l i n e   0   1 5 
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
 # l i n e   1 7   1 5 
 # l i n e   1 8   1 5 
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
 # l i n e   1 1   1 4 
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
 # l i n e   5 1   1 1 
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
 # l i n e   7   6 
 # l i n e   8   6 
 
 / /   L i n k   M e t a l / R o u g h n e s s   M D L   f o r   I r a y 
 / / :   m e t a d a t a   { 
 / / :       " m d l " : " m d l : : a l g : : m a t e r i a l s : : p h y s i c a l l y _ m e t a l l i c _ r o u g h n e s s : : p h y s i c a l l y _ m e t a l l i c _ r o u g h n e s s " 
 / / :   } 
 
 / / -   S h o w   b a c k   f a c e s   a s   t h e r e   m a y   b e   h o l e s   i n   f r o n t   f a c e s . 
 / / :   s t a t e   c u l l _ f a c e   o f f 
 
 / / -   C h a n n e l s   n e e d e d   f o r   m e t a l / r o u g h   w o r k f l o w   a r e   b o u n d   h e r e . 
 / / :   p a r a m   a u t o   c h a n n e l _ b a s e c o l o r 
 u n i f o r m   S a m p l e r S p a r s e   b a s e c o l o r _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ r o u g h n e s s 
 u n i f o r m   S a m p l e r S p a r s e   r o u g h n e s s _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ m e t a l l i c 
 u n i f o r m   S a m p l e r S p a r s e   m e t a l l i c _ t e x ; 
 / / :   p a r a m   a u t o   c h a n n e l _ s p e c u l a r l e v e l 
 u n i f o r m   S a m p l e r S p a r s e   s p e c u l a r l e v e l _ t e x ; 
 
 / / -   S h a d e r   e n t r y   p o i n t . 
 v o i d   s h a d e ( V 2 F   i n p u t s ) 
 { 
     / /   F e t c h   m a t e r i a l   p a r a m e t e r s ,   a n d   c o n v e r s i o n   t o   t h e   s p e c u l a r / r o u g h n e s s   m o d e l 
     f l o a t   r o u g h n e s s   =   g e t R o u g h n e s s ( r o u g h n e s s _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
     v e c 3   b a s e C o l o r   =   g e t B a s e C o l o r ( b a s e c o l o r _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
     f l o a t   m e t a l l i c   =   g e t M e t a l l i c ( m e t a l l i c _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
     f l o a t   s p e c u l a r L e v e l   =   g e t S p e c u l a r L e v e l ( s p e c u l a r l e v e l _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) ; 
     / /   G e t   d e t a i l   ( a m b i e n t   o c c l u s i o n )   a n d   g l o b a l   ( s h a d o w )   o c c l u s i o n   f a c t o r s 
     f l o a t   o c c l u s i o n   =   g e t A O ( i n p u t s . s p a r s e _ c o o r d )   *   g e t S h a d o w F a c t o r ( ) ; 
 
     L o c a l V e c t o r s   v e c t o r s   =   c o m p u t e L o c a l F r a m e ( i n p u t s ) ; 
 
     / /   F e e d   p a r a m e t e r s   f o r   a   p h y s i c a l l y   b a s e d   B R D F   i n t e g r a t i o n 
     e m i s s i v e C o l o r O u t p u t ( b a s e C o l o r   *   p b r C o m p u t e E m i s s i v e ( e m i s s i v e _ t e x ,   i n p u t s . s p a r s e _ c o o r d ) . r ) ; 
 
     / /   D i s c a r d   c u r r e n t   f r a g m e n t   o n   t h e   b a s i s   o f   t h e   o p a c i t y   c h a n n e l 
     / /   a n d   a   u s e r   d e f i n e d   t h r e s h o l d 
     a l p h a K i l l ( i n p u t s . s p a r s e _ c o o r d ) ; 
 
     v e c 3   d i f f C o l o r   =   g e n e r a t e D i f f u s e C o l o r ( b a s e C o l o r ,   m e t a l l i c ) ; 
     d i f f u s e S h a d i n g O u t p u t ( o c c l u s i o n   *   p b r C o m p u t e D i f f u s e ( v e c t o r s . n o r m a l ,   d i f f C o l o r ) ) ; 
     f l o a t   s p e c O c c l u s i o n   =   s p e c u l a r O c c l u s i o n C o r r e c t i o n ( o c c l u s i o n ,   m e t a l l i c ,   r o u g h n e s s ) ; 
     v e c 3   s p e c C o l o r   =   g e n e r a t e S p e c u l a r C o l o r ( s p e c u l a r L e v e l ,   b a s e C o l o r ,   m e t a l l i c ) ; 
     s p e c u l a r S h a d i n g O u t p u t ( s p e c O c c l u s i o n   *   p b r C o m p u t e S p e c u l a r ( v e c t o r s ,   s p e c C o l o r ,   r o u g h n e s s ) ) ; 
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
