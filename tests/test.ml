#use "src/core.ml";;

let expect condition = if not condition then failwith "fixture mismatch";;
let signal_case_1 = { demand = 72; capacity = 79; latency = 12; risk = 14; weight = 8 };;
expect (score signal_case_1 = 171);;
expect (classify signal_case_1 = "review");;
let signal_case_2 = { demand = 67; capacity = 105; latency = 16; risk = 22; weight = 4 };;
expect (score signal_case_2 = 123);;
expect (classify signal_case_2 = "review");;
let signal_case_3 = { demand = 103; capacity = 87; latency = 11; risk = 18; weight = 6 };;
expect (score signal_case_3 = 218);;
expect (classify signal_case_3 = "accept");;

#use "src/review.ml";;
let domain_review = { signal = 42; slack = 30; drag = 29; confidence = 86 };;
expect (review_score domain_review = 113);;
expect (review_lane domain_review = "watch");;
