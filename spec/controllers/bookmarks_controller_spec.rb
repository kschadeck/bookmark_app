require 'spec_helper'

describe BookmarksController do
    render_views

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
    it "should have the right title" do
      get 'edit'
      response.should have_selector("title", :content=> "| Index")
    end
    it "assigns all bookmarks as @bookmarks" do
      bookmark = Bookmark.create! valid_attributes
      get :index
      assigns(:bookmarks).should eq([bookmark])
    end
  end

  describe "GET 'show'" do
    it "should be successful" do
      get 'show'
      response.should be_success
    end
    it "should have the right title" do
      get 'show'
      response.should have_selector("title", :content=> "| Show")
    end 
    it "assigns the requested bookmark as @bookmark" do
      bookmark = Bookmark.create! valid_attributes
      get :show, :id => bookmark.id.to_s
      assigns(:bookmark).should eq(bookmark)
    end   
  end
  
  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
    it "should have the right title" do
      get 'new'
      response.should have_selector("title", :content=> "| New")
    end
    it "assigns a new bookmark as @bookmark" do
      get :new
      assigns(:bookmark).should be_a_new(Bookmark)
    end
  end
  
  describe "GET 'edit'" do
    it "should be successful" do
      get 'edit'
      response.should be_success
    end
    it "should have the right title" do
      get 'edit'
      response.should have_selector("title", :content=> "| Edit")
    end
    it "assigns the requested bookmark as @bookmark" do
      bookmark = Bookmark.create! valid_attributes
      get :edit, :id => bookmark.id.to_s
      assigns(:bookmark).should eq(bookmark)
    end
  end
end
