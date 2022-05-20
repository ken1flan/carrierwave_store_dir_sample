require "test_helper"

class InheritedArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inherited_article = articles(:one)
  end

  test "should get index" do
    get inherited_articles_url
    assert_response :success
  end

  test "should get new" do
    get new_inherited_article_url
    assert_response :success
  end

  test "should create inherited_article" do
    assert_difference("InheritedArticle.count") do
      post inherited_articles_url, params: { inherited_article: { body: @inherited_article.body, title: @inherited_article.title } }
    end

    assert_redirected_to inherited_article_url(InheritedArticle.last)
  end

  test "should show inherited_article" do
    get inherited_article_url(@inherited_article)
    assert_response :success
  end

  test "should get edit" do
    get edit_inherited_article_url(@inherited_article)
    assert_response :success
  end

  test "should update inherited_article" do
    patch inherited_article_url(@inherited_article), params: { inherited_article: { body: @inherited_article.body, title: @inherited_article.title } }
    assert_redirected_to inherited_article_url(@inherited_article)
  end

  test "should destroy inherited_article" do
    assert_difference("InheritedArticle.count", -1) do
      delete inherited_article_url(@inherited_article)
    end

    assert_redirected_to inherited_articles_url
  end
end
