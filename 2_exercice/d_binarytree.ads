generic
   type item is private;
   type traversal is limited private;

   with function "<"(x,y: in item) return boolean is <>;
   with function "="(x,y: in item) return boolean is <>;
   with function ">"(x,y: in item) return boolean is <>;
   with function Image(x: in item) return String;

package d_binarytree is

   type tree is limited private;

   bad_use: exception;
   space_overflow: exception;

   procedure empty(t: out tree);
   function is_empty(t: in tree) return boolean;
   procedure graft (t: out tree; lt, rt: in tree; x: in item);
   procedure root(t: in tree; x: out item);
   procedure left(t: in tree; lt: out tree);
   procedure right(t: in tree; rt: out tree);

   procedure inordre(t: in tree);
  -- function right_tree(t: in tree; r: in traversal) return boolean;

private

   type node;
   type pnode is access node;

   type node is
      record
         x: item;
         l, r: pnode;
      end record;

   type tree is
      record
         root: pnode;
      end record;

end d_binarytree;
