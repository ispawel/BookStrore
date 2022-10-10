//
//  ViewController.swift
//  BookStrore
//
//  Created by Pavel Isakov on 09.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    enum Constants {
        static let bookName = "FROM HELL"
        static let autorName = "Alan Moore"
        static let goldStarIcon = UIImage(named: "goldStar")
        static let greyStarIcon = UIImage(named: "greyStar")
        static let imageBook1 = UIImage(named: "cover1")
        static let imageBook2 = UIImage(named: "cover2")
        static let imageBook3 = UIImage(named: "cover3")
        static let iconLikes = UIImage(named: "likes")
        static let iconComents = UIImage(named: "comments")
        static let iconImages = UIImage(named: "images")
        static let countImageBook: Int = 12
        static var countRemainingImageBook: Int {
            return countImageBook - 3
        }
        static let valueForPapersblack = "576"
        static let valueForPublisher = "Knockabout Comics / Eddi Campbell Comics; Ninth printing edition (30 Oct. 2006)"
        static let valueForLanguage = "English"
        static let valueForISBN = "0861661419"
        
        static let countRating = 9.3
        static let discriptionAutors = "Alan moore (Watchmen) and Eddie Campbell (Bacchus), grandmasters of the comics medium, present a book often ranked staticamong the greatest graphic novels of all time: From Hell."
        static let discriptionBook = "Two master storytellers. Eleven unsolved murders. A hundread years of mystery. One sprawling conspirancy, one staticmetropolis on the brink og the twentieth London into the moern age of terror, and one comics masterpiece. From hell is now abailable in statica handsome hardcover edition, with a brand new cover."
        static let photo1Reviews = UIImage(named: "avatar1")
        static let name1Reviews = "Dan Risch"
        static let dataComment1Reviews = "10 May 2022"
        static let textComment1Reviews = "From hell is one of my favorite comics of all time so I totally loved this. It was like siting in a room whith staticAlan..."
        static let countLikesCommentsReviews1 = 5
        static let countCommentForComemntReviews1 = 1
        static let countImagesReviews1 = 6
        static let photo2Reviews = UIImage(named: "avatar2")
        static let name2Reviews = "Dan Risch"
        static let dataComment2Reviews = "1 May 2022"
        static let textComment2Reviews = "First off. this graphic novell is BIG. It's a beast. Nothing's waffle, however everything in this is pure gold."
        static let countLikesCommentsReviews2 = 2
        static let countCommentForComemntReviews2 = 4
        static let countImagesReviews2 = 3
    }
    private var contentSizeScroll: CGSize {
        CGSize(width: view.frame.width, height: view.frame.height + 700)
    }
    
    private lazy var scrollForContentView: UIScrollView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.showsVerticalScrollIndicator = false
        $0.frame = view.bounds
        $0.contentSize = contentSizeScroll
        return $0
    }(UIScrollView())
    
    private lazy var photoBook: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.contentMode = .scaleAspectFit
        $0.image = UIImage(named: "from_hell")
        return $0
    }(UIImageView())
    
    private lazy var bookTitle: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "\(Constants.bookName)"
        $0.font = UIFont.boldSystemFont(ofSize: 20.0)
        return $0
    }(UILabel())
    
    private lazy var autorNameLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "\(Constants.autorName)"
        $0.font = UIFont.systemFont(ofSize: 14.0)
        $0.textColor = .systemBlue
        return $0
    }(UILabel())
    
    private lazy var viewForRating: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = UIColor(hue: 0, saturation: 0, brightness: 0.93, alpha: 1.0)
        $0.layer.cornerRadius = 6
        $0.layer.borderWidth = 0.2
        return $0
    }(UIView())
    
    private lazy var stackStarsRating : UIStackView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.axis = .horizontal
        $0.distribution = .fillEqually
        $0.alignment = .center
        $0.spacing = 3
        return $0
    }(UIStackView())
    
    private lazy var stars1: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = Constants.goldStarIcon
        return $0
    }(UIImageView())
    
    private lazy var stars2: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = Constants.goldStarIcon
        return $0
    }(UIImageView())
    
    private lazy var stars3: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = Constants.goldStarIcon
        return $0
    }(UIImageView())
    
    private lazy var stars4: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = Constants.goldStarIcon
        return $0
    }(UIImageView())
    
    private lazy var stars5: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = Constants.greyStarIcon
        return $0
    }(UIImageView())
    
    private lazy var numberRating: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "\(Constants.countRating)"
        $0.font = UIFont.systemFont(ofSize: 13.0)
        $0.textColor = UIColor(hue: 0.67, saturation: 0.03, brightness: 0.64, alpha: 1.0)
        return $0
    }(UILabel())
    
    private lazy var textDiscription: UITextView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "\(Constants.discriptionAutors)\n\n\(Constants.discriptionBook)"
        $0.textColor = .gray
        $0.font = UIFont.systemFont(ofSize: 15)
        $0.isEditable = false
        return $0
    }(UITextView())
    
    private lazy var stackForStackImage: UIStackView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.axis = .horizontal
        $0.alignment = .fill
        $0.distribution = .fillEqually
        $0.spacing = 10
        return $0
    }(UIStackView())
    
    private lazy var leftBookImage: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.image = Constants.imageBook1
        return $0
    }(UIImageView())
    
    private lazy var stackForRightImage: UIStackView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.axis = .vertical
        $0.alignment = .fill
        $0.distribution = .fillEqually
        $0.spacing = 10
        return $0
    }(UIStackView())
    
    private lazy var topBookImage: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.image = Constants.imageBook2
        return $0
    }(UIImageView())
    
    private lazy var bottomRightStack: UIStackView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.axis = .horizontal
        $0.distribution = .fillEqually
        $0.spacing = 10
        return $0
    }(UIStackView())
    
    private lazy var bottomLeftBookImage: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.image = Constants.imageBook3
        return $0
    }(UIImageView())
    
    private lazy var bottomRightBookImage: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = UIColor(hue: 0.67, saturation: 0.01, brightness: 0.96, alpha: 1.0)
        return $0
    }(UIView())
    
    private lazy var labelRemainPhotoBook: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.font = UIFont.systemFont(ofSize: 15.0)
        $0.textColor = .gray
        $0.text = "+\(Constants.countRemainingImageBook)"
        return $0
    }(UILabel())
    
    private lazy var labelInfoBook: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "All information"
        $0.font = UIFont.boldSystemFont(ofSize: 16.0)
        return $0
    }(UILabel())
    
    private lazy var papersbackLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Paperback:"
        $0.textColor = .gray
        $0.font = UIFont.systemFont(ofSize: 15.0)
        return $0
    }(UILabel())
    
    private lazy var papersblackValue: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "\(Constants.valueForPapersblack) pages"
        $0.font = UIFont.systemFont(ofSize: 15.0)
        return $0
    }(UILabel())
    
    private lazy var publisherLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Publisher:"
        $0.textColor = .gray
        $0.font = UIFont.systemFont(ofSize: 15.0)
        return $0
    }(UILabel())
    
    private lazy var publisherValue: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.numberOfLines = 6
        $0.text = "\(Constants.valueForPublisher)"
        $0.font = UIFont.systemFont(ofSize: 15.0)
        return $0
    }(UILabel())
    
    private lazy var languageLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Language:"
        $0.textColor = .gray
        $0.font = UIFont.systemFont(ofSize: 15.0)
        return $0
    }(UILabel())
    
    private lazy var languageValue: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "\(Constants.valueForLanguage)"
        $0.font = UIFont.systemFont(ofSize: 15.0)
        return $0
    }(UILabel())
    
    private lazy var isbnLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "ISBN:"
        $0.textColor = .gray
        $0.font = UIFont.systemFont(ofSize: 15.0)
        return $0
    }(UILabel())
    
    private lazy var isbnValue: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "\(Constants.valueForISBN)"
        $0.font = UIFont.systemFont(ofSize: 15.0)
        return $0
    }(UILabel())
    
    private lazy var separationView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = UIColor(hue: 0.67, saturation: 0.01, brightness: 0.96, alpha: 1.0)
        return $0
    }(UIView())
    
    private lazy var separationLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "BEST REVIEWS"
        $0.textColor = .gray
        $0.font = UIFont.systemFont(ofSize: 12.0)
        return $0
    }(UILabel())
    
    //reviews 1
    private lazy var reviewsView1: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.cornerRadius = 12
        $0.center = self.view.center
        $0.backgroundColor = UIColor.white
        $0.layer.shadowColor = UIColor.lightGray.cgColor
        $0.layer.shadowOpacity = 0.7
        $0.layer.shadowOffset = CGSize(width: -1, height: 7)
        $0.layer.shadowRadius = 10
        return $0
    }(UIView())
    
    private lazy var reviews1Photo: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = Constants.photo1Reviews
        $0.layer.cornerRadius = 31
        $0.clipsToBounds = true
        return $0
    }(UIImageView())
    
    private lazy var reviews1Name: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "\(Constants.name1Reviews)"
        $0.font = UIFont.systemFont(ofSize: 15.0)
        return $0
    }(UILabel())
    
    private lazy var reviews1date: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "\(Constants.dataComment1Reviews)"
        $0.font = UIFont.systemFont(ofSize: 13.0)
        $0.textColor = .lightGray
        return $0
    }(UILabel())
    
    private lazy var reviews1text: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "\(Constants.textComment1Reviews)"
        $0.numberOfLines = 3
        $0.font = UIFont.systemFont(ofSize: 14.0)
        $0.textColor = .lightGray
        return $0
    }(UILabel())
    
    private lazy var reviews1LikesIcon: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = Constants.iconLikes
        return $0
    }(UIImageView())
    
    private lazy var reviews1LikesCount: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "\(Constants.countLikesCommentsReviews1)"
        $0.font = UIFont.systemFont(ofSize: 14.0)
        $0.textColor = .lightGray
        return $0
    }(UILabel())
    
    private lazy var reviews1CommentsIcon: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = Constants.iconComents
        return $0
    }(UIImageView())
    
    private lazy var reviews1CommentsCount: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "\(Constants.countCommentForComemntReviews1)"
        $0.font = UIFont.systemFont(ofSize: 14.0)
        $0.textColor = .lightGray
        return $0
    }(UILabel())
    
    private lazy var reviews1PhotoIcon: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = Constants.iconImages
        return $0
    }(UIImageView())
    
    private lazy var reviews1PhotoCount: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "\(Constants.countImagesReviews1)"
        $0.font = UIFont.systemFont(ofSize: 14.0)
        $0.textColor = .lightGray
        return $0
    }(UILabel())
    
    //reviews 2
    private lazy var reviewsView2: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.cornerRadius = 12
        $0.center = self.view.center
        $0.backgroundColor = UIColor.white
        $0.layer.shadowColor = UIColor.lightGray.cgColor
        $0.layer.shadowOpacity = 0.7
        $0.layer.shadowOffset = CGSize(width: -1, height: 7)
        $0.layer.shadowRadius = 10
        return $0
    }(UIView())
    
    private lazy var reviews2Photo: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = Constants.photo2Reviews
        $0.layer.cornerRadius = 31
        $0.clipsToBounds = true
        return $0
    }(UIImageView())
    
    private lazy var reviews2Name: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "\(Constants.name2Reviews)"
        $0.font = UIFont.systemFont(ofSize: 15.0)
        return $0
    }(UILabel())
    
    private lazy var reviews2date: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "\(Constants.dataComment2Reviews)"
        $0.font = UIFont.systemFont(ofSize: 13.0)
        $0.textColor = .lightGray
        return $0
    }(UILabel())
    
    private lazy var reviews2text: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.numberOfLines = 10
        $0.text = "\(Constants.textComment2Reviews)"
        $0.numberOfLines = 3
        $0.font = UIFont.systemFont(ofSize: 14.0)
        $0.textColor = .lightGray
        return $0
    }(UILabel())
    
    private lazy var reviews2LikesIcon: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = Constants.iconLikes
        return $0
    }(UIImageView())
    
    private lazy var reviews2LikesCount: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "\(Constants.countLikesCommentsReviews2)"
        $0.font = UIFont.systemFont(ofSize: 15.0)
        $0.textColor = .lightGray
        return $0
    }(UILabel())
    
    private lazy var reviews2CommentsIcon: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = Constants.iconComents
        return $0
    }(UIImageView())
    
    private lazy var reviews2CommentsCount: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "\(Constants.countCommentForComemntReviews2)"
        $0.font = UIFont.systemFont(ofSize: 15.0)
        $0.textColor = .lightGray
        return $0
    }(UILabel())
    
    private lazy var reviews2PhotoIcon: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = Constants.iconImages
        return $0
    }(UIImageView())
    
    private lazy var reviews2PhotoCount: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "\(Constants.countImagesReviews2)"
        $0.font = UIFont.systemFont(ofSize: 15.0)
        $0.textColor = .lightGray
        return $0
    }(UILabel())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }
    
    private func setupUI(){
        view.backgroundColor = .white
        view.addSubview(scrollForContentView)
        scrollForContentView.addSubview(photoBook)
        scrollForContentView.addSubview(bookTitle)
        scrollForContentView.addSubview(autorNameLabel)
        scrollForContentView.addSubview(viewForRating)
        viewForRating.addSubview(stackStarsRating)
        
        stackStarsRating.addArrangedSubview(stars1)
        stackStarsRating.addArrangedSubview(stars2)
        stackStarsRating.addArrangedSubview(stars3)
        stackStarsRating.addArrangedSubview(stars4)
        stackStarsRating.addArrangedSubview(stars5)
        viewForRating.addSubview(numberRating)
        
        scrollForContentView.addSubview(textDiscription)
        scrollForContentView.addSubview(stackForStackImage)
        
        stackForStackImage.addArrangedSubview(leftBookImage)
        stackForStackImage.addArrangedSubview(stackForRightImage)
        stackForRightImage.addArrangedSubview(topBookImage)
        stackForRightImage.addArrangedSubview(bottomRightStack)
        
        bottomRightStack.addArrangedSubview(bottomLeftBookImage)
        bottomRightStack.addArrangedSubview(bottomRightBookImage)
        bottomRightBookImage.addSubview(labelRemainPhotoBook)
        
        scrollForContentView.addSubview(labelInfoBook)
        scrollForContentView.addSubview(papersbackLabel)
        scrollForContentView.addSubview(papersblackValue)
        scrollForContentView.addSubview(publisherLabel)
        scrollForContentView.addSubview(publisherValue)
        scrollForContentView.addSubview(languageLabel)
        scrollForContentView.addSubview(languageValue)
        scrollForContentView.addSubview(isbnLabel)
        scrollForContentView.addSubview(isbnValue)
        
        scrollForContentView.addSubview(separationView)
        separationView.addSubview(separationLabel)
        
        scrollForContentView.addSubview(reviewsView1)
        reviewsView1.addSubview(reviews1Photo)
        reviewsView1.addSubview(reviews1Name)
        reviewsView1.addSubview(reviews1date)
        reviewsView1.addSubview(reviews1text)
        reviewsView1.addSubview(reviews1LikesIcon)
        reviewsView1.addSubview(reviews1LikesCount)
        reviewsView1.addSubview(reviews1CommentsIcon)
        reviewsView1.addSubview(reviews1CommentsCount)
        reviewsView1.addSubview(reviews1PhotoIcon)
        reviewsView1.addSubview(reviews1PhotoCount)
        
        scrollForContentView.addSubview(reviewsView2)
        reviewsView2.addSubview(reviews2Photo)
        reviewsView2.addSubview(reviews2Name)
        reviewsView2.addSubview(reviews2date)
        reviewsView2.addSubview(reviews2text)
        reviewsView2.addSubview(reviews2LikesIcon)
        reviewsView2.addSubview(reviews2LikesCount)
        reviewsView2.addSubview(reviews2CommentsIcon)
        reviewsView2.addSubview(reviews2CommentsCount)
        reviewsView2.addSubview(reviews2PhotoIcon)
        reviewsView2.addSubview(reviews2PhotoCount)
    }
}
//MARK: - Setup Constraints
extension ViewController{
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            scrollForContentView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            scrollForContentView.leftAnchor.constraint(equalTo: view.leftAnchor),
            scrollForContentView.rightAnchor.constraint(equalTo: view.rightAnchor),
            scrollForContentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            photoBook.topAnchor.constraint(equalTo: scrollForContentView.topAnchor, constant: 30),
            photoBook.centerXAnchor.constraint(equalTo: scrollForContentView.centerXAnchor),
            photoBook.widthAnchor.constraint(equalToConstant: 250),
            photoBook.heightAnchor.constraint(equalToConstant: 250),
            
            bookTitle.topAnchor.constraint(equalTo: photoBook.bottomAnchor, constant: 35),
            bookTitle.centerXAnchor.constraint(equalTo: scrollForContentView.centerXAnchor),
            
            autorNameLabel.topAnchor.constraint(equalTo: bookTitle.bottomAnchor, constant: 8),
            autorNameLabel.centerXAnchor.constraint(equalTo: scrollForContentView.centerXAnchor),
            
            viewForRating.topAnchor.constraint(equalTo: autorNameLabel.bottomAnchor, constant: 20),
            viewForRating.centerXAnchor.constraint(equalTo: scrollForContentView.centerXAnchor),
            viewForRating.widthAnchor.constraint(equalToConstant: 170),
            viewForRating.heightAnchor.constraint(equalToConstant: 30),
            
            stackStarsRating.topAnchor.constraint(equalTo: viewForRating.topAnchor, constant: 6),
            stackStarsRating.leftAnchor.constraint(equalTo: viewForRating.leftAnchor, constant: 13),
            stackStarsRating.rightAnchor.constraint(equalTo: viewForRating.rightAnchor, constant: -43),
            stackStarsRating.bottomAnchor.constraint(equalTo: viewForRating.bottomAnchor, constant: -6),
            
            numberRating.centerYAnchor.constraint(equalTo: viewForRating.centerYAnchor),
            numberRating.rightAnchor.constraint(equalTo: viewForRating.rightAnchor, constant: -12),
            
            textDiscription.topAnchor.constraint(equalTo: viewForRating.bottomAnchor, constant: 20),
            textDiscription.leftAnchor.constraint(equalTo: scrollForContentView.safeAreaLayoutGuide.leftAnchor, constant: 20),
            textDiscription.rightAnchor.constraint(equalTo: scrollForContentView.safeAreaLayoutGuide.rightAnchor, constant: -20),
            textDiscription.heightAnchor.constraint(equalToConstant: 240),
            
            stackForStackImage.topAnchor.constraint(equalTo: textDiscription.bottomAnchor, constant: 40),
            stackForStackImage.leftAnchor.constraint(equalTo: scrollForContentView.safeAreaLayoutGuide.leftAnchor, constant: 20),
            stackForStackImage.rightAnchor.constraint(equalTo: scrollForContentView.safeAreaLayoutGuide.rightAnchor, constant: -20),
            stackForStackImage.heightAnchor.constraint(equalToConstant: scrollForContentView.frame.size.width/2.3),
            
            labelRemainPhotoBook.centerXAnchor.constraint(equalTo: bottomRightBookImage.centerXAnchor),
            labelRemainPhotoBook.centerYAnchor.constraint(equalTo: bottomRightBookImage.centerYAnchor),
            
            labelInfoBook.topAnchor.constraint(equalTo: stackForStackImage.bottomAnchor, constant: 30),
            labelInfoBook.leftAnchor.constraint(equalTo: scrollForContentView.leftAnchor, constant: 20),
            
            papersbackLabel.topAnchor.constraint(equalTo: labelInfoBook.bottomAnchor, constant: 15),
            papersbackLabel.leftAnchor.constraint(equalTo: scrollForContentView.leftAnchor, constant: 20),
            
            papersblackValue.topAnchor.constraint(equalTo: labelInfoBook.bottomAnchor, constant: 15),
            papersblackValue.leftAnchor.constraint(equalTo: papersbackLabel.rightAnchor, constant: 10),
            
            publisherLabel.topAnchor.constraint(equalTo: papersbackLabel.bottomAnchor, constant: 12),
            publisherLabel.leftAnchor.constraint(equalTo: scrollForContentView.leftAnchor, constant: 20),
            
            publisherValue.topAnchor.constraint(equalTo: papersblackValue.bottomAnchor, constant: 12),
            publisherValue.leftAnchor.constraint(equalTo: papersbackLabel.rightAnchor, constant: 10),
            publisherValue.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            
            languageLabel.topAnchor.constraint(equalTo: publisherValue.bottomAnchor, constant: 12),
            languageLabel.leftAnchor.constraint(equalTo: scrollForContentView.leftAnchor, constant: 20),
            
            languageValue.topAnchor.constraint(equalTo: publisherValue.bottomAnchor, constant: 12),
            languageValue.leftAnchor.constraint(equalTo: papersbackLabel.rightAnchor, constant: 10),
            
            isbnLabel.topAnchor.constraint(equalTo: languageValue.bottomAnchor, constant: 12),
            isbnLabel.leftAnchor.constraint(equalTo: scrollForContentView.leftAnchor, constant: 20),
            
            isbnValue.topAnchor.constraint(equalTo: languageValue.bottomAnchor, constant: 12),
            isbnValue.leftAnchor.constraint(equalTo: papersbackLabel.rightAnchor, constant: 10),
            
            separationView.topAnchor.constraint(equalTo: isbnValue.bottomAnchor, constant: 40),
            separationView.widthAnchor.constraint(equalToConstant: scrollForContentView.frame.width),
            separationView.heightAnchor.constraint(equalToConstant: 53),
            
            separationLabel.topAnchor.constraint(equalTo: separationView.topAnchor, constant: 20),
            separationLabel.leftAnchor.constraint(equalTo: separationView.leftAnchor, constant: 20),
            
            //Reviews1
            reviewsView1.topAnchor.constraint(equalTo: separationView.bottomAnchor, constant: 40),
            reviewsView1.centerXAnchor.constraint(equalTo: scrollForContentView.centerXAnchor),
            reviewsView1.widthAnchor.constraint(equalToConstant: scrollForContentView.frame.width - 40),
            reviewsView1.heightAnchor.constraint(equalToConstant: scrollForContentView.frame.width / 2.6),
            
            reviews1Photo.topAnchor.constraint(equalTo: reviewsView1.topAnchor, constant: -20),
            reviews1Photo.leftAnchor.constraint(equalTo: reviewsView1.leftAnchor, constant: 13),
            reviews1Photo.widthAnchor.constraint(equalToConstant: 65),
            reviews1Photo.heightAnchor.constraint(equalToConstant: 65),
            
            reviews1Name.topAnchor.constraint(equalTo: reviewsView1.topAnchor, constant: 10),
            reviews1Name.leftAnchor.constraint(equalTo: reviews1Photo.rightAnchor, constant: 10),
            
            reviews1date.topAnchor.constraint(equalTo: reviews1Name.topAnchor, constant: 20),
            reviews1date.leftAnchor.constraint(equalTo: reviews1Name.leftAnchor, constant: 0),
            
            reviews1text.topAnchor.constraint(equalTo: reviews1Photo.bottomAnchor, constant: 15),
            reviews1text.leftAnchor.constraint(equalTo: reviews1Photo.leftAnchor, constant: 0),
            reviews1text.rightAnchor.constraint(equalTo: reviewsView1.rightAnchor, constant: -20),
            
            reviews1LikesIcon.topAnchor.constraint(equalTo: reviews1text.bottomAnchor, constant: 13),
            reviews1LikesIcon.leftAnchor.constraint(equalTo: reviewsView1.leftAnchor, constant: 15),
            reviews1LikesIcon.widthAnchor.constraint(equalToConstant: 13),
            reviews1LikesIcon.heightAnchor.constraint(equalToConstant: 13),
            
            reviews1LikesCount.topAnchor.constraint(equalTo: reviews1text.bottomAnchor, constant: 10),
            reviews1LikesCount.leftAnchor.constraint(equalTo: reviews1LikesIcon.rightAnchor, constant: 5),
            
            reviews1CommentsIcon.topAnchor.constraint(equalTo: reviews1text.bottomAnchor, constant: 13),
            reviews1CommentsIcon.leftAnchor.constraint(equalTo: reviews1LikesCount.rightAnchor, constant: 25),
            reviews1CommentsIcon.widthAnchor.constraint(equalToConstant: 15),
            reviews1CommentsIcon.heightAnchor.constraint(equalToConstant: 15),
            
            reviews1CommentsCount.topAnchor.constraint(equalTo: reviews1text.bottomAnchor, constant: 10),
            reviews1CommentsCount.leftAnchor.constraint(equalTo: reviews1CommentsIcon.rightAnchor, constant: 5),
            
            reviews1PhotoIcon.topAnchor.constraint(equalTo: reviews1text.bottomAnchor, constant: 13),
            reviews1PhotoIcon.leftAnchor.constraint(equalTo: reviews1CommentsCount.rightAnchor, constant: 25),
            reviews1PhotoIcon.widthAnchor.constraint(equalToConstant: 15),
            reviews1PhotoIcon.heightAnchor.constraint(equalToConstant: 15),
            
            reviews1PhotoCount.topAnchor.constraint(equalTo: reviews1text.bottomAnchor, constant: 10),
            reviews1PhotoCount.leftAnchor.constraint(equalTo: reviews1PhotoIcon.rightAnchor, constant: 5),
            
            //Reviews2
            reviewsView2.topAnchor.constraint(equalTo: reviewsView1.bottomAnchor, constant: 40),
            reviewsView2.centerXAnchor.constraint(equalTo: scrollForContentView.centerXAnchor),
            reviewsView2.widthAnchor.constraint(equalToConstant: scrollForContentView.frame.width - 40),
            reviewsView2.heightAnchor.constraint(equalToConstant: scrollForContentView.frame.width / 2.6),
            
            reviews2Photo.topAnchor.constraint(equalTo: reviewsView2.topAnchor, constant: -20),
            reviews2Photo.leftAnchor.constraint(equalTo: reviewsView2.leftAnchor, constant: 13),
            reviews2Photo.widthAnchor.constraint(equalToConstant: 65),
            reviews2Photo.heightAnchor.constraint(equalToConstant: 65),
            
            reviews2Name.topAnchor.constraint(equalTo: reviewsView2.topAnchor, constant: 10),
            reviews2Name.leftAnchor.constraint(equalTo: reviews2Photo.rightAnchor, constant: 10),
            
            reviews2date.topAnchor.constraint(equalTo: reviews2Name.topAnchor, constant: 20),
            reviews2date.leftAnchor.constraint(equalTo: reviews2Name.leftAnchor, constant: 0),
            
            reviews2text.topAnchor.constraint(equalTo: reviews2Photo.bottomAnchor, constant: 15),
            reviews2text.leftAnchor.constraint(equalTo: reviews2Photo.leftAnchor, constant: 0),
            reviews2text.rightAnchor.constraint(equalTo: reviewsView2.rightAnchor, constant: -20),
            
            reviews2LikesIcon.topAnchor.constraint(equalTo: reviews2text.bottomAnchor, constant: 13),
            reviews2LikesIcon.leftAnchor.constraint(equalTo: reviewsView2.leftAnchor, constant: 15),
            reviews2LikesIcon.widthAnchor.constraint(equalToConstant: 13),
            reviews2LikesIcon.heightAnchor.constraint(equalToConstant: 13),
            
            reviews2LikesCount.topAnchor.constraint(equalTo: reviews2text.bottomAnchor, constant: 10),
            reviews2LikesCount.leftAnchor.constraint(equalTo: reviews2LikesIcon.rightAnchor, constant: 5),
            
            reviews2CommentsIcon.topAnchor.constraint(equalTo: reviews2text.bottomAnchor, constant: 13),
            reviews2CommentsIcon.leftAnchor.constraint(equalTo: reviews2LikesCount.rightAnchor, constant: 25),
            reviews2CommentsIcon.widthAnchor.constraint(equalToConstant: 15),
            reviews2CommentsIcon.heightAnchor.constraint(equalToConstant: 15),
            
            reviews2CommentsCount.topAnchor.constraint(equalTo: reviews2text.bottomAnchor, constant: 10),
            reviews2CommentsCount.leftAnchor.constraint(equalTo: reviews2CommentsIcon.rightAnchor, constant: 5),
            
            reviews2PhotoIcon.topAnchor.constraint(equalTo: reviews2text.bottomAnchor, constant: 13),
            reviews2PhotoIcon.leftAnchor.constraint(equalTo: reviews2CommentsCount.rightAnchor, constant: 25),
            reviews2PhotoIcon.widthAnchor.constraint(equalToConstant: 15),
            reviews2PhotoIcon.heightAnchor.constraint(equalToConstant: 15),
            
            reviews2PhotoCount.topAnchor.constraint(equalTo: reviews2text.bottomAnchor, constant: 10),
            reviews2PhotoCount.leftAnchor.constraint(equalTo: reviews2PhotoIcon.rightAnchor, constant: 5),
        ])
    }
}
