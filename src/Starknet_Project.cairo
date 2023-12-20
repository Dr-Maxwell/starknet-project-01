use debug::PrintTrait;
#[derive(Copy, Drop)]
enum myArray {
    Integer: u128,
    Felt: felt252,
    Tuple: (u32, u32),
}

fn another_func(t: bool){
    'Another Function'.print();
    t.print();
}
fn sum(k:u32, f:u32) -> u64{
   return (k + f).into();
}
fn main() {
let mut Myarr :Array<myArray> = ArrayTrait::new();
Myarr.append(myArray::Integer(4));
Myarr.append(myArray::Felt(4));
Myarr.append(myArray::Tuple((6, 9)));

let mut Dic :felt252Dict<u64> = Default:: default();
 Dic.insert('maxwell', 200);
 Dic.insert('lola', 300);
 let MaxwellBal = Dic.get('maxwell');
 let lolaBal = Dic.get('lola');
   let x :felt252 = 3;
   let u:u32 = 6;
   let y :u32 = x.try_into().unwrap();
   let v:u8 = u.try_into().unwrap();
   v.print();
   let tup = (3, 60, true);
   let (x, p, z) = tup;
   let (e, d, g): (felt252, bool, u32) = (4, true, 10);
   e.print();
   d.print();
   g.print();
   'another funz'.print();
   another_func(true);

   let r = {
    let c = 4;
    c + 10
   };
r.print();
let q = sum(5,13);
q.print();


let mut arr :Array<u128> = ArrayTrait::new();
arr.append(20);
arr.append(40);
arr.append(60);
arr.append(80);
arr.append(100);
arr.is_empty().print();
Myarr.is_empty().print();
}