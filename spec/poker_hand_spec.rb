require 'spec_helper'

describe PokerHandEvaluator do

  it "royal flush" do
    expect(PokerHandEvaluator.new(['d','d','d','d','d'],[10,11,12,13,14]).hand_rank).to eq("you have a Royal Flush")  
  end
  
  it "straight flush" do
    expect(PokerHandEvaluator.new(['d','d','d','d','d'],[4,5,6,7,8]).hand_rank).to eq("you have a Straight Flush")
  end
  
  it "four of a kind trumps flush" do
    expect(PokerHandEvaluator.new(['d','d','d','d','d'],[2,2,2,2,4]).hand_rank).to eq("you have Four of a kind")
  end
  
  it "full house trumps flush" do
    expect(PokerHandEvaluator.new(['d','d','d','d','d'],[2,2,4,4,4]).hand_rank).to eq("you have a Full House")
  end
  
  it "flush trumps two pair" do
    expect(PokerHandEvaluator.new(['d','d','d','d','d'],[5,5,6,6,8]).hand_rank).to eq("you have a Flush")  
  end
  
  it "straight" do
    expect(PokerHandEvaluator.new(["s","s","d","h","s"],[2,3,4,5,6]).hand_rank).to eq("you have a Straight")
  end
  
  it " low straight" do
    expect(PokerHandEvaluator.new(["s","s","d","h","s"],[2,3,4,5,14]).hand_rank).to eq("you have a Straight")
  end
  
  it "Three of a kind" do
    expect(PokerHandEvaluator.new(['d','d','s','d','d'],[2,8,4,4,4]).hand_rank).to eq("you have Three of a kind")
  end
  
  it "Two Pair" do
    expect(PokerHandEvaluator.new(['d','s','d','d','d'],[2,2,4,4,10]).hand_rank).to eq("you have Two Pair")
  end
  
  it "pair" do
    expect(PokerHandEvaluator.new(["s","d","d","d","d"],[2,2,4,12,5]).hand_rank).to eq("you have a Pair")
  end
  
  it "high card" do 
    expect(PokerHandEvaluator.new(["s","d","d","d","d"],[2,5,4,12,8]).hand_rank).to eq("you have a High Card")
  end
end 

  
  
  
  
  
  
